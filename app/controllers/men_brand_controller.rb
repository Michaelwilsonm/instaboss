class MenBrandController < ApplicationController
  before_action :all_men, :all_shop_the_look_images

  def search
    @query_brand = "#{params[:query]}".split.map(&:downcase).join(' ')
    @men = FashionItem.where(:sex => "Mens")
    @query = @men.where("brand LIKE ?", @query_brand)
  end

  def side_search
    @query = "%#{params[:query]}%"
    @brand_query = "%#{params[:query]}%".split.map(&:downcase).join(' ')
    @men = FashionItem.where(:sex => "Mens")
    @query_all = @men.where("description LIKE ? or short_description LIKE ? or brand LIKE ?", @query,@query,@brand_query).reverse
    @shop_men = ShopTheLookImage.where(:gender => "Mens").joins(:shop_the_look_items)
    @shop_look_image_query = @shop_men.where("description LIKE ? or brand LIKE ?", @query,@brand_query).reverse
    @shop_look_image_query.each { |f| @query_all << f }
    @query_all.uniq!
  end

  def mobile_men_search
  end

  def windsor_smith
    @all_brand_display = @men_items.windsor_smith
    @brand = @shop_the_look_image_all.find_brand_mens('windsor smith')
    add_brand(@brand, @all_brand_display)
  end

  def bronze_snake
    @all_brand_display = @men_items.bronze_snake
    @brand = @shop_the_look_image_all.find_brand_mens('bronze snake')
    add_brand(@brand, @all_brand_display)
  end

  def mj_bale
    @all_brand_display = @men_items.mj_bale
    @brand = @shop_the_look_image_all.find_brand_mens('mj bale')
    add_brand(@brand, @all_brand_display)
  end

  def the_modest_vintage_player
    @all_brand_display = @men_items.the_modest_vintage_player
    @brand = @shop_the_look_image_all.find_brand_mens('the modest vintage player')
    add_brand(@brand, @all_brand_display)
  end

  def adidas
    @all_brand_display = @men_items.adidas
    @brand = @shop_the_look_image_all.find_brand_mens('adidas originals')
    add_brand(@brand, @all_brand_display)
  end

  def bjorn_borg
    @all_brand_display = @men_items.bjorn_borg
    @brand = @shop_the_look_image_all.find_brand_mens('bjorn borg')
    add_brand(@brand, @all_brand_display)
  end

  def nike
    @all_brand_display = @men_items.nike_mens
    @brand = @shop_the_look_image_all.find_brand_mens('nike')
    add_brand(@brand, @all_brand_display)
  end

  def leo_joseph
    @all_brand_display = @men_items.leo_joseph
    @brand = @shop_the_look_image_all.find_brand_mens('leo joseph')
    add_brand(@brand, @all_brand_display)
  end

  def daniel_wellington
    @all_brand_display = @men_items.daniel_wellington
    @brand = @shop_the_look_image_all.find_brand_mens('daniel wellington')
    add_brand(@brand, @all_brand_display)
  end

  def just_another_fisherman
    @all_brand_display = @men_items.just_another_fisherman
    @brand = @shop_the_look_image_all.find_brand_mens('just another fisherman')
    add_brand(@brand, @all_brand_display)
  end

  def mvmt
    @all_brand_display = @men_items.mvmt
    @brand = @shop_the_look_image_all.find_brand_mens('mvmt')
    add_brand(@brand, @all_brand_display)
  end


  def morepork
    @all_brand_display = @men_items.morepork
    @brand = @shop_the_look_image_all.find_brand_mens('moreporks')
    add_brand(@brand, @all_brand_display)
  end

  def new_balance
    @all_brand_display = @men_items.new_balance
    @brand = @shop_the_look_image_all.find_brand_mens('new balance')
    add_brand(@brand, @all_brand_display)
  end

  def nautica
    @all_brand_display = @men_items.nautica
    @brand = @shop_the_look_image_all.find_brand_mens('nautica')
    add_brand(@brand, @all_brand_display)
  end

  def retro_marine
    @all_brand_display = @men_items.retro_marine
    @brand = @shop_the_look_image_all.find_brand_mens('retro marine')
    add_brand(@brand, @all_brand_display)
  end

  def sunday_somewhere
    @all_brand_display = @men_items.sunday_somewhere
    @brand = @shop_the_look_image_all.find_brand_mens('sunday somewhere')
    add_brand(@brand, @all_brand_display)
  end

  def i_love_ugly
    @all_brand_display = @men_items.i_love_ugly
    @brand = @shop_the_look_image_all.find_brand_mens('i love ugly')
    add_brand(@brand, @all_brand_display)
  end

  private
    def all_men
      @men_items = FashionItem.all
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

