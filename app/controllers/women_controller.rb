class WomenController < ApplicationController
  before_action :all_women

  def index
    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
    @special_three = @items.nine_special_items_womens.take(12)
    @featured_women = @items.featured_womens.take(6)
    @staff_picked_women = @items.staff_picked_women_items.take(12)
  end

  def all
    @womens = @items.all_womens_items_ALL
  end

  def accessorie
    @accessorie = @items.women_accessorie
  end

  def dress
    @dress = @items.women_dress
  end

  def jean_legging
    @jean_legging = @items.women_jean_legging
  end

  def lifestyle
    @lifestyle = @items.women_lifestyle
  end

  def shoe
    @shoe = @items.women_shoe
  end

  def short_skirt
    @short_skirt = @items.women_short_skirt
  end

  def sunglass_watch
    @sunglass_watch = @items.women_sunglass_watch
  end

  def swim_beachwear
    @swim_beachwear = @items.women_swim_beachwear
  end

  def top
    @top = @items.women_top
  end

  def brand
    @all_womens = @items.all_womens_items_ALL
  end

  def about
  end

  def contact
  end

  private

    def all_women
      @items = FashionItem.all
    end

end
