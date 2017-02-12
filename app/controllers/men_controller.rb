class MenController < GenderController
  before_action :all_fashion
  helper_method :sort_column, :sort_direction
  before_action :all_shop_the_look_images

  def index
    @mens = @items.all_mens_items

    @all_shop_look_featured = @shop_look_images.shop_the_look_featured_men
    @featured_mens = @items.featured_mens
    @all_featured = index_sorting(@featured_mens, @all_shop_look_featured).take(6)

    @sale_mens = @items.all_mens_on_sale
    @special_three = @items.nine_special_items_mens.sample(12)

    @staff_picked_men_items = @items.staff_picks_mens_items
    @all_shop_look_staff = @shop_look_images.shop_the_look_staff_men
    @staff_picked_men = index_sorting(@staff_picked_men_items, @all_shop_look_staff).take(12)
  end

  def all
    @all_men = @items.all_mens_items_ALL
    @shop_the_look_mens = @shop_look_images.shop_the_look_men
    @mens = @all_men + @shop_the_look_mens
    sort_by_created_at(@mens)
  end

  def brand
    @all_mens = @items.all_mens_items_ALL
  end

  def about
  end

  def contact
  end

end
