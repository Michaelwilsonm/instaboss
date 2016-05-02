class ItemController < ApplicationController
  before_action :find_item, only: [:destroy, :show, :edit, :update]
  before_action :authenticate_user!


  def index
    @users_items = current_user.fashion_items
    puts "*" * 50
    puts @users_items
    puts "*" * 50
  end

  def new
    @item = current_user.fashion_items.build
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
    @item.destroy
    redirect_to item_index_path
  end

  def update
  end

  def show
  end

  private

    def find_item
      @item = FashionItem.find(params[:id])
    end

    def fashion_item_params
     params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :user_id, :sale_price)
  end
end

