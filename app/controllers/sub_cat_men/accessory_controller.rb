class SubCatMen::AccessoryController < MenController

  def accessory
    @formal_fashion_item = @items.men_categories("Accessories")
    @formal_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    @all_featured = @items.featured_mens_categorys_four("Accessories").sample(4)
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