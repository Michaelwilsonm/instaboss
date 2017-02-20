class SubCatWomen::DressController < WomenController

  def dress
    @dress_item = @items.women_categories("Dresses")
    @dress_shop_look_items = @shop_look_images.find_category_womens("Dresses").uniq!
    join_items_and_sort(@dress_item, @dress_shop_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def day
    @dress_item = @items.women_sub_categories("Day Dresses")
    @dress_shop_look_items = @shop_look_images.find_category_womens("Dresses").uniq!
    join_items_and_sort(@dress_item, @dress_shop_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def evening
    @dress_item = @items.women_sub_categories("Evening Dresses")
    @dress_shop_look_items = @shop_look_images.find_category_womens("Dresses").uniq!
    join_items_and_sort(@dress_item, @dress_shop_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def playsuit
    @dress_item = @items.women_sub_categories("Playsuits")
    @dress_shop_look_items = @shop_look_images.find_category_womens("Dresses").uniq!
    join_items_and_sort(@dress_item, @dress_shop_look_items)
    respond_to do |format|
        format.html
        format.js
    end
  end
end