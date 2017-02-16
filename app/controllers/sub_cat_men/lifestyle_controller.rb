class SubCatMen::LifestyleController < MenController

  def lifestyle
    @formal_fashion_item = @items.men_categories("Lifestyle")
    @formal_shop_look = @shop_look_images.find_category_mens("Lifestyle").uniq!
    join_items_and_sort(@formal_fashion_item, @formal_shop_look)
    respond_to do |format|
        format.html
        format.js
    end
  end

end