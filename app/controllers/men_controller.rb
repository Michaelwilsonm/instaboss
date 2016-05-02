class MenController < ApplicationController

  def index
    @items = FashionItem.all
    @mens = @items.all_mens_items
    @sale_mens = @items.all_mens_on_sale
    @special_three = @items.three_special_items
  end

  def formal

  end

  def accessorie

  end

  def liftstyle

  end

  def long

  end

  def short_swimwear

  end

  def sunglass_watch

  end

  def shoe

  end

  def top

  end
end
