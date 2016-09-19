class ShopTheLookImagesController < ApplicationController

  def index
  end

  def new
    @image_item = current_user.shop_the_look_images.build
    3.times { @image_item.shop_the_look_items.build }
  end

  def create
    @item = current_user.shop_the_look_images.build(params.require(:shop_the_look_image).permit(:shop_look_image, :user_id))
    @item.save!
    params["shop_items"].each do |item|
      @item.shop_the_look_items.create(item_params(item))
    end

  end

  private

    def item_params(my_params)
      my_params.permit(:gender, :brand, :category, :sub_category, :price, :sale, :unique_affiliate_url)
    end

end
