class MenController < ApplicationController

  def index
    @items = FashionItem.all
    @mens = @items.all_mens_items
    @sale_mens = @items.all_mens_on_sale
  end
end
