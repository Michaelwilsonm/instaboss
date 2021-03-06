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

  def self.featured_four_categories_shop_look_mens
    ShopTheLookImage.where(featured_item: "true", gender: "Mens")
  end

  def self.featured_four_categories_shop_look_womens
    ShopTheLookImage.where(featured_item: "true", gender: "Womens")
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

  def self.find_category_mens(sub_category)
    ShopTheLookImage.where(gender: "Mens").joins(:shop_the_look_items).where('shop_the_look_items.sub_category' => sub_category).order("created_at DESC")
  end

  def self.find_category_mens_shoes
    ShopTheLookImage.where(gender: "Mens").joins("INNER JOIN shop_the_look_items ON shop_the_look_items.shop_the_look_image_id = shop_the_look_images.id AND shop_the_look_items.sub_category = 'Other' AND shop_the_look_items.category = 'Shoes'")
  end

  def self.find_category_mens_access
    ShopTheLookImage.where(gender: "Mens").joins("INNER JOIN shop_the_look_items ON shop_the_look_items.shop_the_look_image_id = shop_the_look_images.id AND shop_the_look_items.sub_category = 'Other' AND shop_the_look_items.category = 'Accessories'")
  end

  def self.find_sub_category_mens(category)
    ShopTheLookImage.where(["gender = ? and describe_the_look = ?", "Mens", category]).order("created_at DESC")
  end

  def self.find_category_womens(category)
    ShopTheLookImage.where(gender: "Womens").joins(:shop_the_look_items).where('shop_the_look_items.category' => category).order("created_at DESC")
  end

  def self.find_sub_category_womens(sub_category)
    ShopTheLookImage.where(gender: "Womens").joins(:shop_the_look_items).where('shop_the_look_items.sub_category' => sub_category).order("created_at DESC")
  end

  def self.find_sub_category_womens_beach
    ShopTheLookImage.where("(describe_the_look = 'Beach' or describe_the_look = 'Beach & Swim') and gender = 'Womens'").order("created_at DESC")
  end

  def self.find_sub_category_womens_other
    ShopTheLookImage.where("(describe_the_look = 'Other') and gender = 'Womens'").order("created_at DESC")
  end

  def self.find_sub_category_womens_going_out
    ShopTheLookImage.where("(describe_the_look = 'Going' or describe_the_look = 'Going Out') and gender = 'Womens'").order("created_at DESC")
  end

  def self.find_sub_category_womens_working_out
    ShopTheLookImage.where("(describe_the_look = 'Working' or describe_the_look = 'Working Out') and gender = 'Womens'").order("created_at DESC")
  end

  def self.find_sub_category_womens_casual
    ShopTheLookImage.where("(describe_the_look = 'Casual') and gender = 'Womens'").order("created_at DESC")
  end

  def self.find_category_womens_access
    ShopTheLookImage.where(gender: "Womens").joins("INNER JOIN shop_the_look_items ON shop_the_look_items.shop_the_look_image_id = shop_the_look_images.id AND shop_the_look_items.sub_category = 'Other' AND shop_the_look_items.category = 'Accessories'")
  end

  def self.find_category_womens_swim
    ShopTheLookImage.where(gender: "Womens").joins("INNER JOIN shop_the_look_items ON shop_the_look_items.shop_the_look_image_id = shop_the_look_images.id AND shop_the_look_items.sub_category = 'Other' AND shop_the_look_items.category = 'Swim'")
  end
end