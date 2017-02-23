class WomenBrandController < ApplicationController
  before_action :all_women, :shop_the_look_images
  require 'will_paginate/array'

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
    @all_brand_display = @women_items.women_brand('windsor smith')
    @brand = @shop_the_look_images.find_brand_womens('windsor smith')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def bronze_snake
    @all_brand_display = @women_items.women_brand('bronze snake')
    @brand = @shop_the_look_images.find_brand_womens('bronze snake')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def new_balance
    @all_brand_display = @women_items.women_brand('new balance')
    @brand = @shop_the_look_images.find_brand_womens('new balance')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def coopers_st
    @all_brand_display = @women_items.women_brand('cooper st')
    @brand = @shop_the_look_images.find_brand_womens('cooper st')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def mura
    @all_brand_display = @women_items.women_brand('mura boutique')
    @brand = @shop_the_look_images.find_brand_womens('mura boutique')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def princess_polly
    @all_brand_display = @women_items.women_brand('princess polly')
    @brand = @shop_the_look_images.find_brand_womens('princess polly')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jo_mercer
    @all_brand_display = @women_items.women_brand('jo mercer')
    @brand = @shop_the_look_images.find_brand_womens('jo mercer')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def showpo
    @all_brand_display = @women_items.women_brand('showpo')
    @brand = @shop_the_look_images.find_brand_womens('showpo')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def samantha_wills
    @all_brand_display = @women_items.women_brand('samantha wills')
    @brand = @shop_the_look_images.find_brand_womens('samantha wills')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def esther
    @all_brand_display = @women_items.women_brand('esther')
    @brand = @shop_the_look_images.find_brand_womens('esther')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def senso
    @all_brand_display = @women_items.women_brand('senso')
    @brand = @shop_the_look_images.find_brand_womens('senso')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def lorna_jane
    @all_brand_display = @women_items.women_brand('lorna jane')
    @brand = @shop_the_look_images.find_brand_womens('lorna jane')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def sunday_somewhere
    @all_brand_display = @women_items.women_brand('sunday somewhere')
    @brand = @shop_the_look_images.find_brand_womens('sunday somewhere')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def forever_21
    @all_brand_display = @women_items.women_brand('forever 21')
    @brand = @shop_the_look_images.find_brand_womens('forever 21')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def tony_bianco
    @all_brand_display = @women_items.women_brand('tony bianco')
    @brand = @shop_the_look_images.find_brand_womens('tony bianco')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def daniel_wellington
    @all_brand_display = @women_items.women_brand('daniel wellington')
    @brand = @shop_the_look_images.find_brand_womens('daniel wellington')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def alice_mccall
    @all_brand_display = @women_items.women_brand('alice mccall')
    @brand = @shop_the_look_images.find_brand_womens('alice mccall')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def auguste
    @all_brand_display = @women_items.women_brand('auguste')
    @brand = @shop_the_look_images.find_brand_womens('auguste')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def sea_folly
    @all_brand_display = @women_items.women_brand('seafolly')
    @brand = @shop_the_look_images.find_brand_womens('seafolly')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def top_shop
    @all_brand_display = @women_items.women_brand('topshop')
    @brand = @shop_the_look_images.find_brand_womens('topshop')
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def victorias_secret
    @all_brand_display = @women_items.women_brand("victoria's secret")
    @brand = @shop_the_look_images.find_brand_womens("victoria's secret")
    join_items_and_sort(@brand, @all_brand_display)
    respond_to do |format|
        format.html
        format.js
    end
  end

  private

    def all_women
      @women_items = FashionItem.all
    end

    def shop_the_look_images
      @shop_the_look_images = ShopTheLookImage.all
    end

    def join_items_and_sort(fashion_items, shop_look_items)
      combine_querys = (fashion_items + shop_look_items).flatten
      sorted_items = combine_querys.sort { |a,b| b.created_at <=> a.created_at }
      @all_items = (sorted_items).paginate(:page =>params[:page], :per_page => 33)
  end
end