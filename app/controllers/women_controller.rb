class WomenController < ApplicationController
  before_action :all_women

  def index
    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
    @special_three = @items.nine_special_items_womens
    @featured_women = @items.featured_womens
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

  private

    def all_women
      @items = FashionItem.all
    end

end
