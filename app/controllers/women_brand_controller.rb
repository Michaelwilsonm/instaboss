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
    @windsor_smith = @women_items.women_windsor_smith
    @brand = @shop_the_look_image_all.find_brand_womens('windsor smith')
    add_brand(@brand, @windsor_smith)
  end

  def bronze_snake
    @bronze_snake = @women_items.women_bronze_snake
    @brand = @shop_the_look_image_all.find_brand_womens('bronze snake')
    add_brand(@brand, @bronze_snake)
  end

  def new_balance
    @new_balance = @women_items.women_new_balance
    @brand = @shop_the_look_image_all.find_brand_womens('new balance')
    add_brand(@brand, @new_balance)
  end

  def coopers_st
    @coopers_st = @women_items.women_coopers_st
    @brand = @shop_the_look_image_all.find_brand_womens('cooper st')
    add_brand(@brand, @coopers_st)
  end

  def mura
    @mura = @women_items.women_mura
    @brand = @shop_the_look_image_all.find_brand_womens('mura')
    add_brand(@brand, @mura)
  end

  def princess_polly
    @princess_polly = @women_items.women_princess_polly
    @brand = @shop_the_look_image_all.find_brand_womens('princess polly')
    add_brand(@brand, @princess_polly)
  end

  def jo_mercer
    @jo_mercer = @women_items.women_jo_mercer
    @brand = @shop_the_look_image_all.find_brand_womens('jo mercer')
    add_brand(@brand, @jo_mercer)
  end

  def showpo
    @showpo = @women_items.women_showpo
    @brand = @shop_the_look_image_all.find_brand_womens('showpo')
    add_brand(@brand, @showpo)
  end

  def samantha_wills
    @samantha_willis = @women_items.women_samantha_willis
    @brand = @shop_the_look_image_all.find_brand_womens('samantha wills')
    add_brand(@brand, @samantha_willis)
  end

  def esther
    @esther = @women_items.women_esther
    @brand = @shop_the_look_image_all.find_brand_womens('esther')
    add_brand(@brand, @esther)
  end

  def senso
    @senso = @women_items.women_senso
    @brand = @shop_the_look_image_all.find_brand_womens('senso')
    add_brand(@brand, @senso)
  end

  def lorna_jane
    @lorna_jane = @women_items.women_lorna_jane
    @brand = @shop_the_look_image_all.find_brand_womens('lorna jane')
    add_brand(@brand, @lorna_jane)
  end

  def sunday_somewhere
    @sunday_somewhere = @women_items.women_sunday_somewhere
    @brand = @shop_the_look_image_all.find_brand_womens('sunday somewhere')
    add_brand(@brand, @sunday_somewhere)
  end

  def forever_21
    @forever_21 = @women_items.women_forever_21
    @brand = @shop_the_look_image_all.find_brand_womens('forever 21')
    add_brand(@brand, @showpo)
  end

  def tony_bianco
    @tony_bianco = @women_items.women_tony_bianco
    @brand = @shop_the_look_image_all.find_brand_womens('tony bianco')
    add_brand(@brand, @tony_bianco)
  end

  def daniel_wellington
    @daniel_wellington = @women_items.women_daniel_wellington
    @brand = @shop_the_look_image_all.find_brand_womens('daniel wellington')
    add_brand(@brand, @daniel_wellington)
  end

  def alice_mccall
    @alice_mccall = @women_items.women_alice_mccall
    @brand = @shop_the_look_image_all.find_brand_womens('alice mccall')
    add_brand(@brand, @alice_mccall)
  end

  def auguste
    @auguste = @women_items.women_auguste
    @brand = @shop_the_look_image_all.find_brand_womens('auguste')
    add_brand(@brand, @auguste)
  end

  def sea_folly
    @sea_folly = @women_items.women_sea_folly
    @brand = @shop_the_look_image_all.find_brand_womens('seafolly')
    add_brand(@brand, @sea_folly)
  end

  def top_shop
    @top_shop = @women_items.women_top_shop
    @brand = @shop_the_look_image_all.find_brand_womens('topshop')
    add_brand(@brand, @top_shop)
  end

  def victorias_secret
    @victorias_secret = @women_items.women_victorias_secret
    @brand = @shop_the_look_image_all.find_brand_womens("victoria's secret")
    add_brand(@brand, @victorias_secret)
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