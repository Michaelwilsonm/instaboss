class MenController < ApplicationController
  before_action :all_fashion
  def index
    @mens = @items.all_mens_items
    @sale_mens = @items.all_mens_on_sale
    @special_three = @items.three_special_items_mens
  end

  def formal
    @formal = @items.men_formal
  end

  def accessorie
    @accessorie = @items.men_accessorie
  end

  def lifestyle
    @lifestyle = @items.men_lifestyle
  end

  def long
    @long = @items.men_long
  end

  def short_swimwear
    @short_swimwear = @items.men_short_swimwear
  end

  def sunglass_watch
    @sunglass_watch = @items.men_sunglass_watch
  end

  def shoe
    @shoe = @items.men_shoe
  end

  def top
    @top = @items.men_top
  end

  private

    def all_fashion
      @items = FashionItem.all
    end
end
