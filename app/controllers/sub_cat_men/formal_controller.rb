class SubCatMen::FormalController < MenController

  def formal
    @formal_fashion_item = @items.men_formal
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
  end

  def jacket_coat
  end

  def accessorie
  end

  def suit
  end
end