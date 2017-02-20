class SubCatWomen::HomeController < WomenController

  def home
    @home_item = @items.women_categories("Home & Lifestyle")
    @home_shop_look_item = @shop_look_images.find_category_womens("Home & Lifestyle").uniq!
    join_items_and_sort(@home_item, @home_shop_look_item)
    respond_to do |format|
        format.html
        format.js
    end
  end
end