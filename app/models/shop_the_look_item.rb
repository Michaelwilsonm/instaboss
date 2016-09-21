class ShopTheLookItem < ActiveRecord::Base
  belongs_to :shop_the_look_image, inverse_of: :shop_the_look_items
end
