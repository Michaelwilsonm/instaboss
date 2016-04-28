class ItemController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @item = FashionItem.new()
  end

  def create
    @item = current_user.fashion_items.build(fashion_item_params)
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
     params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :user_id, :sale_price)
  end
end

