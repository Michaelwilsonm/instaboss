class SiteController < ApplicationController
  def index
  end

  def sale_mens
    @items = FashionItem.all
    @sale_mens = @items.all_mens_on_sale
  end

  def sale_womens
    @items = FashionItem.all
    @sale_womens = @items.all_womens_on_sale
  end

  def about
  end

  def contact
  end
end
