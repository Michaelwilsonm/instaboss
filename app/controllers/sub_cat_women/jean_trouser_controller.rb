class SubCatWomen::JeanTrouserController < WomenController

  def jean_trouser
    @jean_trouser_item = @items.women_categories("Jeans")
    @jean_trouser_shop_look_item = @shop_look_images.find_category_womens("Jeans").uniq!
    join_items_and_sort(@jean_trouser_item, @jean_trouser_shop_look_item)
    @all_featured = @items.featured_womens_categorys_four("Jeans").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jean
    @jean_trouser_item = @items.women_sub_categories("Jeans")
    @jean_trouser_shop_look_item = @shop_look_images.find_category_womens("Jeans").uniq!
    join_items_and_sort(@jean_trouser_item, @jean_trouser_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def trouser
    @jean_trouser_item = @items.women_sub_categories("Trousers")
    @jean_trouser_shop_look_item = @shop_look_images.find_category_womens("Trousers").uniq!
    join_items_and_sort(@jean_trouser_item, @jean_trouser_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def legging
    @jean_trouser_item = @items.women_sub_categories("Leggings")
    @jean_trouser_shop_look_item = @shop_look_images.find_category_womens("Leggings").uniq!
    join_items_and_sort(@jean_trouser_item, @jean_trouser_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

end