class SubCatWomen::HomeController < WomenController

  def home
    @home_item = @items.women_categories("Home")
    @home_shop_look_item = @shop_look_images.find_category_womens("Home").uniq!
    join_items_and_sort(@home_item, @home_shop_look_item)
    @all_featured = @items.featured_womens_categorys_four("Home").sample(4)
    respond_to do |format|
        format.html
        format.js
    end
  end
end