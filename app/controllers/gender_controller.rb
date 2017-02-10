class GenderController < ApplicationController

  def index_sorting(fashion_items, shop_look_items)
    all = fashion_items + shop_look_items
    all.sort! { |a,b| b.created_at <=> a.created_at }
  end

  def join_items_and_sort(fashion_items, shop_look_items)
    @all_items = fashion_items + shop_look_items
    @all_items.sort! { |a,b| b.created_at <=> a.created_at }
  end

  def sort_by_created_at(all_items)
    all_items.sort! { |a,b| b.created_at <=> a.created_at }
  end

  def all_fashion
    @items = FashionItem.all
  end

  def all_shop_the_look_images
    @shop_look_images = ShopTheLookImage.all
  end

  def sort_column
    FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
  end
end