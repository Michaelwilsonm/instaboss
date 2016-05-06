class SiteController < ApplicationController
  def index
  end

  def sale
    @items = FashionItem.all
    @sale = @items.sales
  end

  def about
  end

  def contact
  end
end
