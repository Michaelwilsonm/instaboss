class MenController < ApplicationController
  before_action :all_fashion
  helper_method :sort_column, :sort_direction

  def index
    @mens = @items.all_mens_items
    @sale_mens = @items.all_mens_on_sale
    @special_three = @items.nine_special_items_mens.sample(12)
    @featured_men = @items.featured_mens.take(6)
    @staff_picked_men = @items.staff_picks_mens_items.take(12)
  end

  def all
    @mens = @items.all_mens_items_ALL
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

  def about
  end

  def contact
  end

  private

    def all_fashion
      @items = FashionItem.all
    end

    def sort_column
      FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
    end
end
