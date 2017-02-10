class SubCatMen::ShoeController < MenController

  def shoe
    @formal_fashion_item = @items.men_categories("Shoes")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def boat
    @formal_fashion_item = @items.men_categories("Boat")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def boot
    @formal_fashion_item = @items.men_sub_categories("Boots")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def trainer
    @formal_fashion_item = @items.men_sub_categories("Trainers")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def formal
    @formal_fashion_item = @items.men_sub_categories("Formal")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def other
    @formal_fashion_item = @items.men_sub_categories("Other")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

end