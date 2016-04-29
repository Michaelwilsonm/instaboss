class WomenController < ApplicationController

  def index
    @items = FashionItem.all
    @womens = @items.all_womens_items
    @sale_womens = @items.all_womens_on_sale
  end

end
