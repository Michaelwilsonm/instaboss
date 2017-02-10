class SubCatMen::ShortSwimwearController < MenController

  def sunglass_watch
    @formal_fashion_item = @items.men_categories("Shorts")
    @formal_shop_look = @shop_look_images.find_category_mens("Shorts").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def swimwear
    @formal_fashion_item = @items.men_sub_categories("Swimwear")
    @formal_shop_look = @shop_look_images.find_category_mens("Shorts").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def short
    @formal_fashion_item = @items.men_sub_categories("Shorts")
    @formal_shop_look = @shop_look_images.find_category_mens("Shorts").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

end