class WomenController < GenderController
  before_action :all_women
  before_action :all_shop_the_look_images

  def index
    @all_shop_look_featured = @shop_look_images.shop_the_look_featured_women
    @featured_womens = @items.featured_womens
    @all_featured = index_sorting(@featured_womens, @all_shop_look_featured).take(6)

    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
    @special_three = @items.nine_special_items_womens.sample(12)

    @staff_picked_women = @items.staff_picked_women_items
    @all_shop_look_staff = @shop_look_images.shop_the_look_staff_women
    @staff_picked_men = index_sorting(@staff_picked_women, @all_shop_look_staff).take(12)
  end

  def all
    @womens_items = @items.all_womens_items_ALL
    @shop_the_look_womens = @shop_look_images.shop_the_look_women
    @womens = @womens_items + @shop_the_look_womens
    sort_by_created_at(@womens)
  end

  def brand
  end

  def about
  end

  def contact
  end
end
