class FashionItem < ActiveRecord::Base
  # validates :short_description, length: { in: 0..25 }
  belongs_to :user
  has_attached_file :item_image, styles: { medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/

  def self.sales
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sale = true").reverse
  end

  def self.all_mens_items_ALL
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens'").reverse
  end

  def self.all_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'false'").reverse
  end

  def self.staff_picks_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND staff_picks = 'true'").reverse
  end

  def self.featured_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND featured_item = 'true'").reverse
  end

  def self.all_mens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'").reverse
  end

  def self.nine_special_items_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'").sample(12)
  end

  def self.men_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Accessories'").reverse
  end

  def self.men_formal
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Formal'").reverse
  end

  def self.men_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'LifeStyle'").reverse
  end

  def self.men_long
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Longs'").reverse
  end

  def self.men_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shoes'").reverse
  end

  def self.men_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Tops'").reverse
  end

  def self.men_short
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts'").reverse
  end

  def self.men_short_swimwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts'").reverse
  end

  def self.men_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Sunglasses'").reverse
  end


#WOMENS
  def self.all_womens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'false'").reverse
  end

  def self.all_womens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'").reverse
  end

  def self.featured_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND featured_item = 'true'").reverse
  end


  def self.nine_special_items_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'").sample(9)
  end

  def self.women_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Accessories'").reverse
  end

  def self.women_jean_legging
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Jeans'").reverse
  end

  def self.women_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Lifestyle'").reverse
  end

  def self.women_dress
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Dresses'").reverse
  end

  def self.women_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shoes'").reverse
  end

  def self.women_short_skirt
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shorts'").reverse
  end

  def self.women_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Sunglasses'").reverse
  end

  def self.women_swim_beachwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Swim'").reverse
  end

  def self.women_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Tops'").reverse
  end

  def self.staff_picked_women_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND staff_picks = 'true'").reverse
  end

  def self.all_womens_items_ALL
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens'").reverse
  end

end
