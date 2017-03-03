class FashionItem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :item_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/
  before_save do
    self.brand = brand.split.map(&:downcase).join(' ')
  end

  def self.featured_mens_categorys_four(category_for_featured_four)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND featured_item = 'true' AND category =" + "'" + category_for_featured_four + "'" + "ORDER BY created_at DESC")
  end

  def self.all_mens_items_page
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' ORDER BY created_at DESC")
  end

  def self.men_categories(category_item)
    FashionItem.where(["sex = ? and category = ?", "Mens", category_item]).order("created_at DESC")
  end

  def self.men_sub_categories(sub_category_item)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sub_category =" + "'" + sub_category_item + "'" + "ORDER BY created_at DESC")
  end

  def self.more_you_might_like(type_of_item, sex_of_item)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = " + "'" + sex_of_item + "'" + " AND sub_category = " + "'" + type_of_item + "'" + " ORDER BY RANDOM() LIMIT 6")
  end

  def self.sales
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND featured_item = true ORDER BY created_at DESC")
  end

  def self.sales_women
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND featured_item = true ORDER BY created_at DESC")
  end

  def self.all_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'false' ORDER BY created_at DESC")
  end

  def self.staff_picks_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND staff_picks = 'true' ORDER BY created_at DESC")
  end

  def self.featured_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND featured_item = 'true' ORDER BY created_at DESC")
  end

  def self.all_mens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true' ORDER BY created_at DESC")
  end

  def self.nine_special_items_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'")
  end

  def self.men_brand(brand)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand =" + "'" + brand + "'" + "ORDER BY created_at DESC")
  end

#WOMENS
  def self.women_categories(category_item)
    FashionItem.where(["sex = ? and category = ?", "Womens", category_item]).order("created_at DESC")
  end

  def self.women_sub_categories(category_item)
    FashionItem.where(["sex = ? and sub_category = ?", "Womens", category_item]).order("created_at DESC")
  end

  def self.all_womens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'false' ORDER BY created_at DESC")
  end

  def self.all_womens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true' ORDER BY created_at DESC")
  end

  def self.women_brand(brand)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand =" + "'" + brand + "'" + "ORDER BY created_at DESC")
  end

  def self.featured_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND featured_item = 'true' ORDER BY created_at DESC")
  end

  def self.nine_special_items_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'")
  end

  def self.staff_picked_women_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND staff_picks = 'true' ORDER BY created_at DESC")
  end

  def self.all_womens_items_ALL
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' ORDER BY created_at DESC")
  end

  def self.featured_womens_categorys_four(category_for_featured_four)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND featured_item = 'true' AND category =" + "'" + category_for_featured_four + "'" + "ORDER BY created_at DESC")
  end
end
