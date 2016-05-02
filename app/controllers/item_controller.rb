class ItemController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin!


  def index
    @item = current_user.fashion_items.all
  end

  def new
    @item = FashionItem.new()
  end

  def create
    @item = current_user.fashion_items.build(fashion_item_params)
    if @item.save
      render 'index'
    else
      render 'new'
    end
  end

  def edit

  end

  def destroy


  end

  def update
  end

  private

    def find_item
    end

    def fashion_item_params
     params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :user_id, :sale_price)
  end
end

