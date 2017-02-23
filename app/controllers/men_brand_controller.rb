class MenBrandController < ApplicationController
  before_action :all_men, :shop_the_look_images
  require 'will_paginate/array'

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
    @all_brand_display = @men_items.men_brand('windsor smith')
    @brand = @shop_look_images.find_brand_mens('windsor smith')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def bronze_snake
    @all_brand_display = @men_items.men_brand('bronze snake')
    @brand = @shop_look_images.find_brand_mens('bronze snake')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def mj_bale
    @all_brand_display = @men_items.men_brand('mj bale')
    @brand = @shop_look_images.find_brand_mens('mj bale')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def the_modest_vintage_player
    @all_brand_display = @men_items.men_brand('the modest vintage player')
    @brand = @shop_look_images.find_brand_mens('the modest vintage player')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def adidas
    @all_brand_display = @men_items.men_brand('adidas originals')
    @brand = @shop_look_images.find_brand_mens('adidas originals')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def bjorn_borg
    @all_brand_display = @men_items.men_brand('bjorn borg')
    @brand = @shop_look_images.find_brand_mens('bjorn borg')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def nike
    @all_brand_display = @men_items.men_brand('nike')
    @brand = @shop_look_images.find_brand_mens('nike')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def leo_joseph
    @all_brand_display = @men_items.men_brand('leo joseph')
    @brand = @shop_look_images.find_brand_mens('leo joseph')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def daniel_wellington
    @all_brand_display = @men_items.men_brand('daniel wellington')
    @brand = @shop_look_images.find_brand_mens('daniel wellington')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def just_another_fisherman
    @all_brand_display = @men_items.men_brand('just another fisherman')
    @brand = @shop_look_images.find_brand_mens('just another fisherman')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def mvmt
    @all_brand_display = @men_items.men_brand('mvmt')
    @brand = @shop_look_images.find_brand_mens('mvmt')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end


  def morepork
    @all_brand_display = @men_items.men_brand('moreporks')
    @brand = @shop_look_images.find_brand_mens('moreporks')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new_balance
    @all_brand_display = @men_items.men_brand('new balance')
    @brand = @shop_look_images.find_brand_mens('new balance')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def nautica
    @all_brand_display = @men_items.men_brand('nautica')
    @brand = @shop_look_images.find_brand_mens('nautica')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def retro_marine
    @all_brand_display = @men_items.men_brand('retro marine')
    @brand = @shop_look_images.find_brand_mens('retro marine')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def sunday_somewhere
    @all_brand_display = @men_items.men_brand('sunday somewhere')
    @brand = @shop_look_images.find_brand_mens('sunday somewhere')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def i_love_ugly
    @all_brand_display = @men_items.men_brand('i love ugly')
    @brand = @shop_look_images.find_brand_mens('i love ugly')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
    def all_men
      @men_items = FashionItem.all
    end

    def shop_the_look_images
      @shop_look_images = ShopTheLookImage.all
    end

    def join_items_and_sort(fashion_items, shop_look_items)
      combine_querys = (fashion_items + shop_look_items).flatten
      sorted_items = combine_querys.sort { |a,b| b.created_at <=> a.created_at }
      @all_items = (sorted_items).paginate(:page =>params[:page], :per_page => 13)
  end
end

