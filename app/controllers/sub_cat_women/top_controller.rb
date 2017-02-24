class SubCatWomen::TopController < WomenController

  def top
    @top_item = @items.women_categories("Tops")
    @top_shop_the_look_item = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_item, @top_shop_the_look_item)
    @all_featured = @items.featured_womens_categorys_four("Accessories").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def tshirt_vest
    @top_item = @items.women_sub_categories("T-shirts & Vests")
    @top_shop_the_look_item = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_item, @top_shop_the_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def shirt_blouse
    @top_item = @items.women_sub_categories("Shirts & Blouses")
    @top_shop_the_look_item = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_item, @top_shop_the_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def hoodie_sweat_shirt
    @top_item = @items.women_sub_categories("Hoodies & Sweatshirts")
    @top_shop_the_look_item = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_item, @top_shop_the_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jacket_coat
    @top_item = @items.women_sub_categories("Jakets & Coats")
    @top_shop_the_look_item = @shop_look_images.find_category_womens("Tops").uniq!
    join_items_and_sort(@top_item, @top_shop_the_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end
end