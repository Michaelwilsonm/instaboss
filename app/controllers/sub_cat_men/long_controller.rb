class SubCatMen::LongController < MenController

  def long
    @formal_fashion_item = @items.men_categories("Longs")
    @formal_shop_look = @shop_look_images.find_category_mens("Longs").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jean
    @formal_fashion_item = @items.men_sub_categories("Jeans")
    @formal_shop_look = @shop_look_images.find_category_mens("Longs").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def chino
    @formal_fashion_item = @items.men_sub_categories("Chinos")
    @formal_shop_look = @shop_look_images.find_category_mens("Longs").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jogger
    @formal_fashion_item = @items.men_sub_categories("Joggers")
    @formal_shop_look = @shop_look_images.find_category_mens("Longs").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

end