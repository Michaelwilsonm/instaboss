class ShopTheLookImage < ActiveRecord::Base

  belongs_to :user
  has_many :shop_the_look_items, :dependent => :destroy, inverse_of: :shop_the_look_image
  has_attached_file :shop_look_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :shop_look_image, content_type: /\Aimage\/.*\Z/
  validates :gender, presence: true
  accepts_nested_attributes_for :shop_the_look_items, reject_if: :all_blank,allow_destroy: true

  def self.shop_the_look_women
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Womens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_men
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Mens' ORDER BY created_at DESC")
  end

  def self.find_brand_mens(brand)
    ShopTheLookImage.where(gender: "Mens").joins(:shop_the_look_items).where('shop_the_look_items.brand' => brand)
  end

  def self.find_brand_womens(brand)
    ShopTheLookImage.where(gender: "Womens").joins(:shop_the_look_items).where('shop_the_look_items.brand' => brand)
  end
end
