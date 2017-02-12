class SubCatMen::FormalController < MenController

  def formal
    @formal_fashion_item = @items.men_categories("Formal")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def jacket_coat
    @formal_fashion_item = @items.men_sub_categories("Jackets")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def accessory
    @formal_fashion_item = @items.men_sub_categories("Accessories")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def suit
    @formal_fashion_item = @items.men_sub_categories("Suit")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end
end