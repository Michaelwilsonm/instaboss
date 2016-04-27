class ItemController < ApplicationController
  # before_action :authenticate_user!

  def index

  end

  def new
    @item = FashionItem.new
  end

  def create
    @item = FashionItem.create(fashion_item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def update
  end

  private
    def fashion_item_params
      params.require(:fashion_item).permit(:item_image)
    end
end
