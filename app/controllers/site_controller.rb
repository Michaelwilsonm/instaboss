class SiteController < ApplicationController
  def index
  end

  def sale_mens
    @items = FashionItem.all
    @all_featured = @items.sales.sample(4)
    @all_items = @items.all_mens_on_sale.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

  def sale_womens
    @items = FashionItem.all
    @all_featured = @items.sales_women.sample(4)
    @all_items = @items.all_womens_on_sale.paginate(:page =>params[:page], :per_page => 33)
    respond_to do |format|
        format.html
        format.js
    end
  end

end