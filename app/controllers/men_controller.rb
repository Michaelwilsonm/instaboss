class MenController < ApplicationController
  before_action :all_fashion
  helper_method :sort_column, :sort_direction
  before_action :all_shop_the_look_images

  def index
    @mens = @items.all_mens_items
    @sale_mens = @items.all_mens_on_sale
    @special_three = @items.nine_special_items_mens.sample(12)
    @featured_men = @items.featured_mens.take(6)
    @staff_picked_men = @items.staff_picks_mens_items.take(12)
  end

  def shop_the_look
    @shop_the_look_mens = @shop_look_images.shop_the_look_men
  end

  def all
    @all_men = @items.all_mens_items_ALL
    @shop_the_look_mens = @shop_look_images.shop_the_look_men
    @mens = @all_men + @shop_the_look_mens
    sort_by_created_at(@mens)
  end

  def formal
    @formal_fashion_item = @items.men_formal
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def accessorie
    @accessorie_fashion_item = @items.men_accessorie
    @accessorie_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
  end

  def lifestyle
    @lifestyle_fashion_item = @items.men_lifestyle
    @lifestyle_shop_look = @shop_look_images.find_category_mens("Lifestyle").uniq!
    join_items_and_sort(@lifestyle_fashion_item, @lifestyle_shop_look)
  end

  def long
    @long_fashion_item = @items.men_long
    @long_shop_look = @shop_look_images.find_category_mens("Longs").uniq!
    join_items_and_sort(@long_fashion_item, @long_shop_look)
  end

  def short_swimwear
    @short_fashion_item = @items.men_short_swimwear
    @short_shop_look = @shop_look_images.find_category_mens("Shorts").uniq!
    join_items_and_sort(@short_fashion_item, @short_shop_look)
  end

  def sunglass_watch
    @sunglass_watch_fashion_item = @items.men_sunglass_watch
    @sunglass_shop_look = @shop_look_images.find_category_mens("Sunglasses").uniq!
    join_items_and_sort(@sunglass_watch_fashion_item, @sunglass_shop_look)
  end

  def shoe
    @shoe_fashion_item = @items.men_shoe
    @shoe_shop_look = @shop_look_images.find_category_mens("Shoes").uniq!
    join_items_and_sort(@shoe_fashion_item, @shoe_shop_look)
  end

  def top
    @top_fashion_item = @items.men_top
    @top_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@top_fashion_item, @top_shop_look)
  end

  def brand
    @all_mens = @items.all_mens_items_ALL
  end

  def about
  end

  def contact
  end

  private

    def join_items_and_sort(fashion_items, shop_look_items)
      @all_items = fashion_items + shop_look_items
      @all_items.sort! { |a,b| b.created_at <=> a.created_at }
    end

    def sort_by_created_at(all_items)
      all_items.sort! { |a,b| b.created_at <=> a.created_at }
    end

    def all_fashion
      @items = FashionItem.all
    end

    def all_shop_the_look_images
      @shop_look_images = ShopTheLookImage.all
    end

    def sort_column
      FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
    end
end
