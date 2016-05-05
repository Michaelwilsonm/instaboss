class AdminController < ApplicationController
  before_action :find_item, only: [:show, :destroy, :edit, :update]
  before_action :authenticate_admin!
  helper_method :sort_column, :sort_direction

  def index
    @all_items = FashionItem.all.order(sort_column + ' ' + sort_direction)
  end

  def destroy
    @item.destroy
    redirect_to admin_index_path
  end

  def edit
  end

  def show
  end

  def update
    if @item.update!(fashion_item_params)
      redirect_to admin_index_path
    else
      redirect_to item_path
    end
  end

  private

    def find_item
      @item = FashionItem.find(params[:id])
    end

    def fashion_item_params
      params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :sale_price)
    end

    def sort_column
      FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
    end
end
