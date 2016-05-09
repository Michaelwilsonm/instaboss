class FashionItem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :item_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/

  def self.sales
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sale = true")
  end


  def self.all_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens'")
  end

  def self.all_mens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'")
  end

  def self.nine_special_items_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'").sample(9)
  end

  def self.men_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Accessories'")
  end

  def self.men_formal
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Formal'")
  end

  def self.men_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'LifeStyle'")
  end

  def self.men_long
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Longs'")
  end

  def self.men_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shoes'")
  end

  def self.men_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Tops'")
  end

  def self.men_short
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts'")
  end

  def self.men_short_swimwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts'")
  end

  def self.men_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Sunglasses'")
  end


#WOMENS
  def self.all_womens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens'")
  end

  def self.all_womens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'")
  end


  def self.nine_special_items_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'").sample(9)
  end

  def self.women_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Accessories'")
  end

  def self.women_jean_legging
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Jeans'")
  end

  def self.women_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Lifestyle'")
  end

  def self.women_dress
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Dresses'")
  end

  def self.women_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shoes'")
  end

  def self.women_short_skirt
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shorts'")
  end

  def self.women_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Sunglasses'")
  end

  def self.women_swim_beachwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Swim'")
  end

  def self.women_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Tops'")
  end
end
