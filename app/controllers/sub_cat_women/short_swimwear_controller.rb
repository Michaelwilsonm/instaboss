class SubCatWomen::ShortSwimwearController < WomenController

  def short_swimwear
    @short_swimwear_item = @items.women_categories("Swim & Beachwear")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Swim & Beachwear").uniq!
    join_items_and_sort(@short_swimwear_item, @short_swimwear_shop_look_item)
    @all_featured = @items.featured_womens_categorys_four("Accessories").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def bikini
    @short_swimwear_item = @items.women_sub_categories("Bikinis")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Swim & Beachwear").uniq!
    join_items_and_sort(@short_swimwear_item, @short_swimwear_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def other
    @short_swimwear_item = @items.women_sub_categories("Other")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Swim & Beachwear").uniq!
    join_items_and_sort(@short_swimwear_item, @short_swimwear_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def swimsuit
    @short_swimwear_item = @items.women_sub_categories("Swimsuits")
    @short_swimwear_shop_look_item = @shop_look_images.find_category_womens("Swim & Beachwear").uniq!
    join_items_and_sort(@short_swimwear_item, @short_swimwear_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

end