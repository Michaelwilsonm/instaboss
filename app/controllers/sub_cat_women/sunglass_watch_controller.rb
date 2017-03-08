class SubCatWomen::SunglassWatchController < WomenController

  def sunglass_watch
    @sunglass_item = @items.women_categories("Sunglasses")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Sunglasses").uniq!
    join_items_and_sort(@sunglass_item, @short_swimwear_shop_look_item)
    @all_featured = @items.featured_womens_categorys_four("Sunglasses").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def sunglass
    @sunglass_item = @items.women_sub_categories("Sunglasses")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Sunglasses").uniq!
    join_items_and_sort(@sunglass_item, @short_swimwear_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def watch
    @short_swimwear_item = @items.women_sub_categories("Watches")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Wathces").uniq!
    join_items_and_sort(@short_swimwear_item, @short_swimwear_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end
end