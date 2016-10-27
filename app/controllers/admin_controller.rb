class AdminController < ApplicationController
  before_action :find_item, only: [:destroy, :edit, :update]
  before_action :authenticate_admin!
  helper_method :sort_column, :sort_direction

  def index
    @all_items = FashionItem.all.order(sort_column + ' ' + sort_direction)
  end

  def shop_look_image
    @shop_look_image_item = ShopTheLookImage.all
  end

  def destroy
    @item.destroy
    if params[:from]=="show-page"
      redirect_to men_path
    else
      redirect_to admin_index_path
    end
  end

  def edit
  end

  def show
    @item = FashionItem.find(params[:id])
  end

  def update_shop_staff_true
    @shop_look_image = ShopTheLookImage.find(params[:id])
    @shop_look_image.update!(staff_picks: false)
     respond_to do |format|
      format.json { render json: @shop_look_image }
    end
  end

  def update_shop_staff_false
    @shop_look_image = ShopTheLookImage.find(params[:id])
    @shop_look_image.update!(staff_picks: true)
     respond_to do |format|
      format.json { render json: @shop_look_image }
    end
  end

    def update_shop_featured_true
    @shop_look_image = ShopTheLookImage.find(params[:id])
    @shop_look_image.update!(featured_item: false)
     respond_to do |format|
      format.json { render json: @shop_look_image }
    end
  end

  def update_shop_featured_false
    @shop_look_image = ShopTheLookImage.find(params[:id])
    @shop_look_image.update!(featured_item: true)
     respond_to do |format|
      format.json { render json: @shop_look_image }
    end
  end

  def update_staff_true
    @item = FashionItem.find(params[:id])
    @item.update!(staff_picks: false)
     respond_to do |format|
      format.json { render json: @item }
    end
  end

  def update_staff_false
    @item = FashionItem.find(params[:id])
    puts @item.staff_picks
    @item.update!(staff_picks: true)
     respond_to do |format|
      format.json { render json: @item }
    end
  end

  def update_featured_true
    @item = FashionItem.find(params[:id])
    @item.update!(featured_item: false)
     respond_to do |format|
      format.json { render json: @item }
    end
  end

  def update_featured_false
    @item = FashionItem.find(params[:id])
    @item.update!(featured_item: true)
     respond_to do |format|
      format.json { render json: @item }
    end
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
      params.require(:FashionItem).permit(:sex, :brand, :description, :category, :sub_category, :price, :sale, :item_image, :shipped_from, :sale_price, :short_description, :featured_item, :unique_affiliate_url, :staff_picks, :wwshipping)
    end

    def sort_column
      FashionItem.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "desc"
    end
end
