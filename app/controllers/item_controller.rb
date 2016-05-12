class ItemController < ApplicationController
  before_action :find_item, only: [:destroy, :show, :edit, :update]
  before_action :authenticate_user!, only: [:destroy, :edit, :update, :create]
  helper_method :sort_column, :sort_direction


  def index
    @users_items = current_user.fashion_items.order(sort_column + ' ' + sort_direction)
  end

  def new
    @item = current_user.fashion_items.build
  end

  def create
    @item = current_user.fashion_items.build(fashion_item_params)
    if @item.save
      redirect_to item_index_path
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
   if @item.update_attributes(fashion_item_params)
    redirect_to item_index_path
   else
    redirect_to item_path
   end
  end

  def show
  end

  private

    def find_item
      @item = FashionItem.find(params[:id])
    end

    def fashion_item_params
      params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :user_id, :sale_price, :short_description)
    end

    def sort_column
      FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
    end
end

