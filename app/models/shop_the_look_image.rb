class ShopTheLookImage < ActiveRecord::Base
  belongs_to :user
  has_many :shop_the_look_items, dependent: :destroy
  has_attached_file :shop_look_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :shop_look_image, content_type: /\Aimage\/.*\Z/

end
