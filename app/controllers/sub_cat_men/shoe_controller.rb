class SubCatMen::ShoeController < MenController

  def shoe
    @formal_fashion_item = @items.men_categories("Shoes")
    @formal_shop_look = @shop_look_images.find_category_mens("Shoes").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    @all_featured = @items.featured_mens_categorys_four("Shoes").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def boat
    @formal_fashion_item = @items.men_sub_categories("Boat")
    @formal_shop_look = @shop_look_images.find_category_mens("Boat").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def boot
    @formal_fashion_item = @items.men_sub_categories("Boots")
    @formal_shop_look = @shop_look_images.find_category_mens("Boots").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def trainer
    @formal_fashion_item = @items.men_sub_categories("Sneakers")
    @formal_shop_look = @shop_look_images.find_category_mens("Sneakers").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def formal
    @formal_fashion_item = @items.men_sub_categories("Formal")
    @formal_shop_look = @shop_look_images.find_category_mens("Formal").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @formal_fashion_item = @items.find_sub_cat_shoes
    @formal_shop_look = @shop_look_images.find_category_mens_shoes
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

end