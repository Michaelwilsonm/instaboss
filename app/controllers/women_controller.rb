class WomenController < ApplicationController

  def index
    @items = FashionItem.all
  end

end
