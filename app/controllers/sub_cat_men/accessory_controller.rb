class SubCatMen::AccessoryController < MenController

  def accessory
    @formal_fashion_item = @items.men_categories("Accessories")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)


    @all_shop_look_featured = @shop_look_images.shop_the_look_featured_men
    @featured_mens = @items.featured_mens
    @all_featured = index_sorting(@featured_mens, @all_shop_look_featured).take(4)


    respond_to do |format|
        format.html
        format.js
    end
  end

  def hat
    @formal_fashion_item = @items.men_sub_categories("Hats")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def bag
    @formal_fashion_item = @items.men_sub_categories("Bags")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jewellery
    @formal_fashion_item = @items.men_sub_categories("Jewellery")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @formal_fashion_item = @items.men_sub_categories("Other")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end
end