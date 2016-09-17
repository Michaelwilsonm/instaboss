class ShopTheLookImagesController < ApplicationController

  def index
  end

  def new
    @image_item = current_user.shop_the_look_images.build
    3.times { @image_item.shop_the_look_items.build }
  end

end
