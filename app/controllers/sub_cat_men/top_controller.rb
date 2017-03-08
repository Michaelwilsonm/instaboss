class SubCatMen::TopController < MenController

  def top
    @formal_fashion_item = @items.men_categories("Tops")
    @formal_shop_look = @shop_look_images.find_category_mens("Tops").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    @all_featured = @items.featured_mens_categorys_four("Tops").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def polo
    @formal_fashion_item = @items.men_sub_categories("Shirts")
    @formal_shop_look = @shop_look_images.find_category_mens("Shirts").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def shirt
    @formal_fashion_item = @items.men_sub_categories("Tanks")
    @formal_shop_look = @shop_look_images.find_category_mens("Tanks").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def jacket
    @formal_fashion_item = @items.men_sub_categories("Jackets")
    @formal_shop_look = @shop_look_images.find_category_mens("Jackets").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def hoodie
    @formal_fashion_item = @items.men_sub_categories("Hoodies")
    @formal_shop_look = @shop_look_images.find_category_mens("Hoodies").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end
end