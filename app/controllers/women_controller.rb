class WomenController < ApplicationController
  before_action :all_women
  before_action :all_shop_the_look_images

  def index
    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
    @special_three = @items.nine_special_items_womens.sample(12)
    @featured_women = @items.featured_womens.take(6)
    @staff_picked_women = @items.staff_picked_women_items.take(12)
  end

  def all
    @womens_items = @items.all_womens_items_ALL
    @shop_the_look_womens = @shop_look_images.shop_the_look_women
    @womens = @womens_items + @shop_the_look_womens
    sort_by_created_at(@womens)
  end

  def accessorie
    @accessorie_fashion_item = @items.women_accessorie
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
  end

  def dress
    @dress_fashion_item = @items.women_dress
    @dress_shop_look = @shop_look_images.find_category_womens("Dresses").uniq!
    join_items_and_sort(@dress_fashion_item, @dress_shop_look)
  end

  def jean_legging
    @jean_legging_fashion_item = @items.women_jean_legging
    @jean_shop_look = @shop_look_images.find_category_womens("Jeans").uniq!
    join_items_and_sort(@jean_legging_fashion_item, @jean_shop_look)
  end

  def lifestyle
    @lifestyle_fashion_item = @items.women_lifestyle
    @lifestyle_shop_look = @shop_look_images.find_category_womens("Lifestyle").uniq!
    join_items_and_sort(@lifestyle_fashion_item, @lifestyle_shop_look)
  end

  def shoe
    @shoe_fashion_item = @items.women_shoe
    @shoe_shop_look = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_fashion_item, @shoe_shop_look)
  end

  def short_skirt
    @short_skirt_fashion_item = @items.women_short_skirt
    @short_skirt_shop_look = @shop_look_images.find_category_womens("Shorts").uniq!
    join_items_and_sort(@short_skirt_fashion_item, @short_skirt_shop_look)
  end

  def sunglass_watch
    @sunglass_watch_fashion_item = @items.women_sunglass_watch
    @sunglass_shop_look = @shop_look_images.find_category_womens("Sunglasses").uniq!
    join_items_and_sort(@sunglass_watch_fashion_item, @sunglass_shop_look)
  end

  def swim_beachwear
    @swim_beachwear_fashion_item = @items.women_swim_beachwear
    @swim_beach_shop_look = @shop_look_images.find_category_womens("Swim").uniq!
    join_items_and_sort(@swim_beachwear_fashion_item, @swim_beach_shop_look)
  end

  def top
    @top_fashion_item = @items.women_top
    @top_shop_look = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_fashion_item, @top_shop_look)
  end

  def brand
    @all_womens = @items.all_womens_items_ALL
  end

  def shop_the_look
    @shop_the_look_womens = @shop_look_images.shop_the_look_women
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

    def all_shop_the_look_images
      @shop_look_images = ShopTheLookImage.all
    end

    def all_women
      @items = FashionItem.all
    end

end
