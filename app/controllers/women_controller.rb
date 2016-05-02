class WomenController < ApplicationController

  def index
    @items = FashionItem.all
    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
    @special_three = @items.three_special_items_womens
  end

  def accessorie
  end

  def dress
  end

  def jean_legging
  end

  def lifestye
  end

  def shoe
  end

  def short_skirt
  end

  def sunglass_watch
  end

  def swim_beachwear
  end

  def top
  end

end
