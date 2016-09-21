class ShopTheLookImage < ActiveRecord::Base

  belongs_to :user
  has_many :shop_the_look_items, :dependent => :destroy, inverse_of: :shop_the_look_image
  has_attached_file :shop_look_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :shop_look_image, content_type: /\Aimage\/.*\Z/

  accepts_nested_attributes_for :shop_the_look_items, reject_if: :all_blank
  # reject_if: proc { |a| a[:sub_category, :category, :brand, :price, :sale, :unique_affiliate_url].blank? }

  def self.shop_the_look_women
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Womens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_men
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Mens' ORDER BY created_at DESC")
  end
end
