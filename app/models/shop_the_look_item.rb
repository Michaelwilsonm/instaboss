class ShopTheLookItem < ActiveRecord::Base
  belongs_to :shop_the_look_image, inverse_of: :shop_the_look_items

  before_save do
    self.brand = brand.split.map(&:downcase).join(' ')
  end
end
