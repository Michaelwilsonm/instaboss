class ShopTheLookImagesController < ApplicationController
  before_action :find_shop_look_image, only: [:show, :edit, :destroy, :update]

  def index
    @users_items = current_user.shop_the_look_images.reverse
  end

  def new
    @shop_the_look_image = current_user.shop_the_look_images.build
  end

  def create
    @new_shop_the_look_item = current_user.shop_the_look_images.build(shop_look_image_params)
    if @new_shop_the_look_item.save
      redirect_to shop_the_look_images_path
    else
      render action: 'new'
    end
  end

  def show
    session[:my_previous_url] = URI(request.referer || '').path
    @back_url = session[:my_previous_url]
  end

  def edit
  end

  def update
    if @shop_the_look_image.update_attributes(shop_look_image_params)
      redirect_to shop_the_look_images_path
    else
      redirect_to shop_the_look_image_path
    end
  end

  def destroy
    @shop_the_look_image.destroy!
    if params[:from]=="admin-page"
      redirect_to shop_look_image_admin_index_path
    else
      redirect_to shop_the_look_images_path
    end
  end

  private

    def shop_look_image_params
      params.require(:shop_the_look_image).permit(:gender, :shop_look_image, :ww_shipping, shop_the_look_items_attributes: [:id, :_destroy, :description, :brand, :sale_price, :sub_category, :category, :price, :sale, :unique_affiliate_url, :percentage_off, :shipped_from, :shop_the_look_image_id])
    end

    def find_shop_look_image
      @shop_the_look_image = ShopTheLookImage.find(params[:id])
    end

end
