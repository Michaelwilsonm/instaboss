class MenController < ApplicationController

  def index
    @items = FashionItem.all
    @mens = @items.all_mens_items
  end


end
