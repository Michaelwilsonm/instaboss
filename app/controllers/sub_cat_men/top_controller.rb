class SubCatMen::TopController < MenController

  def top
    @formal_fashion_item = @items.men_categories("Tops")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def polo
    @formal_fashion_item = @items.men_sub_categories("T-Shirts")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def shirt
    @formal_fashion_item = @items.men_sub_categories("Shirts")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def jacket
    @formal_fashion_item = @items.men_sub_categories("Jackets")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def hoodie
    @formal_fashion_item = @items.men_sub_categories("Hoodies")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end
end