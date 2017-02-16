class SubCatWomen::TopController < WomenController

  def short
    @short_item = @items.women_categories("Shorts & Skirts")
    @short_shop_the_look_items = @shop_look_images.find_category_womens("Shorts & Skirts").uniq!
    join_items_and_sort(@short_item, @short_shop_the_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def short_only
    @short_item = @items.women_sub_categories("Shorts")
    @short_shop_the_look_items = @shop_look_images.find_category_womens("Shorts & Skirts").uniq!
    join_items_and_sort(@short_item, @short_shop_the_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def skirt
    @short_item = @items.women_sub_categories("Skirts")
    @short_shop_the_look_items = @shop_look_images.find_category_womens("Shorts & Skirts").uniq!
    join_items_and_sort(@short_item, @short_shop_the_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

end