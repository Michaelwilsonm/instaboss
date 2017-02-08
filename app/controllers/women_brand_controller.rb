class WomenBrandController < ApplicationController
  before_action :all_women, :all_shop_the_look_images

  def search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query = @women.where("brand LIKE ?", @query_brand)
  end

  def side_search
    @query = "%#{params[:query]}%"
    @brand_query = "%#{params[:query]}%".split.map(&:downcase).join(' ')
    @women = FashionItem.where(:sex => "Womens")
    @query_all = @women.where("description LIKE ? or short_description LIKE ? or brand LIKE ?", @query,@query,@brand_query).reverse

    @shop_women = ShopTheLookImage.where(:gender => "Womens").joins(:shop_the_look_items)
    @shop_look_image_query = @shop_women.where("description LIKE ? or brand LIKE ?", @query,@brand_query).reverse
    @shop_look_image_query.each { |f| @query_all << f }
    @query_all.uniq!
  end

  def mobile_women_search
  end

  def windsor_smith
    @all_brand_display = @women_items.women_windsor_smith
    @brand = @shop_the_look_image_all.find_brand_womens('windsor smith')
    add_brand(@brand, @all_brand_display)
  end

  def bronze_snake
    @all_brand_display = @women_items.women_bronze_snake
    @brand = @shop_the_look_image_all.find_brand_womens('bronze snake')
    add_brand(@brand, @all_brand_display)
  end

  def new_balance
    @all_brand_display = @women_items.women_new_balance
    @brand = @shop_the_look_image_all.find_brand_womens('new balance')
    add_brand(@brand, @all_brand_display)
  end

  def coopers_st
    @all_brand_display = @women_items.women_coopers_st
    @brand = @shop_the_look_image_all.find_brand_womens('cooper st')
    add_brand(@brand, @all_brand_display)
  end

  def mura
    @all_brand_display = @women_items.women_mura
    @brand = @shop_the_look_image_all.find_brand_womens('mura boutique')
    add_brand(@brand, @all_brand_display)
  end

  def princess_polly
    @all_brand_display = @women_items.women_princess_polly
    @brand = @shop_the_look_image_all.find_brand_womens('princess polly')
    add_brand(@brand, @all_brand_display)
  end

  def jo_mercer
    @all_brand_display = @women_items.women_jo_mercer
    @brand = @shop_the_look_image_all.find_brand_womens('jo mercer')
    add_brand(@brand, @all_brand_display)
  end

  def showpo
    @all_brand_display = @women_items.women_showpo
    @brand = @shop_the_look_image_all.find_brand_womens('showpo')
    add_brand(@brand, @all_brand_display)
  end

  def samantha_wills
    @all_brand_display = @women_items.women_samantha_willis
    @brand = @shop_the_look_image_all.find_brand_womens('samantha wills')
    add_brand(@brand, @all_brand_display)
  end

  def esther
    @all_brand_display = @women_items.women_esther
    @brand = @shop_the_look_image_all.find_brand_womens('esther')
    add_brand(@brand, @all_brand_display)
  end

  def senso
    @all_brand_display = @women_items.women_senso
    @brand = @shop_the_look_image_all.find_brand_womens('senso')
    add_brand(@brand, @all_brand_display)
  end

  def lorna_jane
    @all_brand_display = @women_items.women_lorna_jane
    @brand = @shop_the_look_image_all.find_brand_womens('lorna jane')
    add_brand(@brand, @all_brand_display)
  end

  def sunday_somewhere
    @all_brand_display = @women_items.women_sunday_somewhere
    @brand = @shop_the_look_image_all.find_brand_womens('sunday somewhere')
    add_brand(@brand, @all_brand_display)
  end

  def forever_21
    @all_brand_display = @women_items.women_forever_21
    @brand = @shop_the_look_image_all.find_brand_womens('forever 21')
    add_brand(@brand, @all_brand_display)
  end

  def tony_bianco
    @all_brand_display = @women_items.women_tony_bianco
    @brand = @shop_the_look_image_all.find_brand_womens('tony bianco')
    add_brand(@brand, @all_brand_display)
  end

  def daniel_wellington
    @all_brand_display = @women_items.women_daniel_wellington
    @brand = @shop_the_look_image_all.find_brand_womens('daniel wellington')
    add_brand(@brand, @all_brand_display)
  end

  def alice_mccall
    @all_brand_display = @women_items.women_alice_mccall
    @brand = @shop_the_look_image_all.find_brand_womens('alice mccall')
    add_brand(@brand, @all_brand_display)
  end

  def auguste
    @all_brand_display = @women_items.women_auguste
    @brand = @shop_the_look_image_all.find_brand_womens('auguste')
    add_brand(@brand, @all_brand_display)
  end

  def sea_folly
    @all_brand_display = @women_items.women_sea_folly
    @brand = @shop_the_look_image_all.find_brand_womens('seafolly')
    add_brand(@brand, @all_brand_display)
  end

  def top_shop
    @all_brand_display = @women_items.women_top_shop
    @brand = @shop_the_look_image_all.find_brand_womens('topshop')
    add_brand(@brand, @all_brand_display)
  end

  def victorias_secret
    @all_brand_display = @women_items.women_victorias_secret
    @brand = @shop_the_look_image_all.find_brand_womens("victoria's secret")
    add_brand(@brand, @all_brand_display)
  end

  private

    def all_women
      @women_items = FashionItem.all
    end

    def all_shop_the_look_images
      @shop_the_look_image_all = ShopTheLookImage.all
    end

    def add_brand(brand, item_brand)
      brand.each { |f| item_brand << f }
      item_brand.uniq!
      item_brand.sort! { |a,b| b.created_at <=> a.created_at }
    end
end