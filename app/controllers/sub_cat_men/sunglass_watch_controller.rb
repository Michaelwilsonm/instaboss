class SubCatMen::SunglassWatchController < MenController

  def sunglass_watch
    @formal_fashion_item = @items.men_categories("Sunglasses")
    @formal_shop_look = @shop_look_images.find_category_mens("Sunglasses").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def watch
    @formal_fashion_item = @items.men_sub_categories("Watches")
    @formal_shop_look = @shop_look_images.find_category_mens("Sunglasses").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def sunglass
    @formal_fashion_item = @items.men_sub_categories("Sunglasses")
    @formal_shop_look = @shop_look_images.find_category_mens("Sunglasses").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

end