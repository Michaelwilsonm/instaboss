class SubCatMen::AccessoryController < MenController

  def accessory
    @acces_item = @items.men_categories("Accessories")
    @access_shop_look = @shop_look_images.find_category_mens("Accessories").uniq!
    join_items_and_sort(@acces_item, @access_shop_look)
    @all_featured = @items.featured_mens_categorys_four("Accessories").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def hat
    @acces_item = @items.men_sub_categories("Hats")
    @access_shop_look = @shop_look_images.find_category_mens("Hats").uniq!
    join_items_and_sort(@acces_item, @access_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def bag
    @acces_item = @items.men_sub_categories("Bags")
    @access_shop_look = @shop_look_images.find_category_mens("Bags").uniq!
    join_items_and_sort(@acces_item, @access_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jewellery
    @acces_item = @items.men_sub_categories("Jewellery")
    @access_shop_look = @shop_look_images.find_category_mens("Jewellery").uniq!
    join_items_and_sort(@acces_item, @access_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @acces_item = @items.find_sub_cat_accessories
    @access_shop_look = @shop_look_images.find_category_mens_access.uniq!
    join_items_and_sort(@acces_item, @access_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end
end