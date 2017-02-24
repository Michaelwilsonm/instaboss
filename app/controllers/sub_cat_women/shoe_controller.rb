class SubCatWomen::ShoeController < WomenController

  def shoe
    @shoe_item = @items.women_categories("Shoes")
    @shoe_shop_look_item = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_item, @shoe_shop_look_item)
    @all_featured = @items.featured_womens_categorys_four("Accessories").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def boot
    @shoe_item = @items.women_sub_categories("Boots")
    @shoe_shop_look_item = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_item, @shoe_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def trainer
    @shoe_item = @items.women_sub_categories("Sneakers")
    @shoe_shop_look_item = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_item, @shoe_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def heel
    @shoe_item = @items.women_sub_categories("Heels")
    @shoe_shop_look_item = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_item, @shoe_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def flat
    @shoe_item = @items.women_sub_categories("Flats")
    @shoe_shop_look_item = @shop_look_images.find_category_womens("Shoes").uniq!
    join_items_and_sort(@shoe_item, @shoe_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end
end