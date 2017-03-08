class SubCatWomen::AccessoryController < WomenController

  def accessory
    @accessorie_fashion_item = @items.women_categories("Accessories")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    @all_featured = @items.featured_womens_categorys_four("Accessories").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def lingerie
    @accessorie_fashion_item = @items.women_sub_categories("Lingerie")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def hat
    @accessorie_fashion_item = @items.women_sub_categories("Hats")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jewellery
    @accessorie_fashion_item = @items.women_sub_categories("Jewellery")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def bag
    @accessorie_fashion_item = @items.women_sub_categories("Bags")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @accessorie_fashion_item = @items.women_sub_categories("Other")
    @accessorie_shop_look = @shop_look_images.find_category_womens("Accessories").uniq!
    join_items_and_sort(@accessorie_fashion_item, @accessorie_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

end