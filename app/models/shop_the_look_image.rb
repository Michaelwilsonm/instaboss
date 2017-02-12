class ShopTheLookImage < ActiveRecord::Base

  belongs_to :user
  has_many :shop_the_look_items, :dependent => :destroy, inverse_of: :shop_the_look_image
  has_attached_file :shop_look_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :shop_look_image, content_type: /\Aimage\/.*\Z/
  validates :gender, :shop_look_image, presence: true
  accepts_nested_attributes_for :shop_the_look_items, reject_if: :all_blank,allow_destroy: true

  def self.more_items(gender)
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = " +"'" + gender + "'" + " ORDER BY RANDOM() LIMIT 6")
  end

  def self.shop_the_look_women
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Womens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_men
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE gender = 'Mens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_featured_men
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE featured_item = 'true' AND gender = 'Mens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_staff_men
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE staff_picks = 'true' AND gender = 'Mens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_featured_women
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE featured_item = 'true' AND gender = 'Womens' ORDER BY created_at DESC")
  end

  def self.shop_the_look_staff_women
    ShopTheLookImage.find_by_sql("SELECT * FROM shop_the_look_images WHERE staff_picks = 'true' AND gender = 'Womens' ORDER BY created_at DESC")
  end

  def self.find_brand_mens(brand)
    ShopTheLookImage.where(gender: "Mens").joins(:shop_the_look_items).where('shop_the_look_items.brand' => brand)
  end

  def self.find_brand_womens(brand)
    ShopTheLookImage.where(gender: "Womens").joins(:shop_the_look_items).where('shop_the_look_items.brand' => brand)
  end

  def self.find_category_mens(category)
    ShopTheLookImage.where(gender: "Mens").joins(:shop_the_look_items).where('shop_the_look_items.category' => category)
  end

  def self.find_sub_category_mens(category)
    ShopTheLookImage.where(gender: "Mens").joins(:shop_the_look_items).where('shop_the_look_items.sub_category' => category)
  end

  def self.find_category_womens(category)
    ShopTheLookImage.where(gender: "Womens").joins(:shop_the_look_items).where('shop_the_look_items.category' => category)
  end
end
