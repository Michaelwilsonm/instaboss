class FashionItem < ActiveRecord::Base
  # validates :short_description, length: { in: 0..25 }
  belongs_to :user
  has_attached_file :item_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/
  before_save do
    self.brand = brand.split.map(&:downcase).join(' ')
  end

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
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'")
  end

  def self.men_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Accessories'").reverse
  end

  def self.men_formal
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Formal'").reverse
  end

  def self.men_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Lifestyle'").reverse
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

  def self.bjorn_borg
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'bjorn borg'").reverse
  end

  def self.daniel_wellington
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'daniel wellington'").reverse
  end

  def self.just_another_fisherman
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'just another fisherman'").reverse
  end

  def self.morepork
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'moreporks'").reverse
  end

  def self.new_balance
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'new balance'").reverse
  end

  def self.mvmt
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'mvmt'").reverse
  end

  def self.nautica
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'nautica'").reverse
  end

  def self.retro_marine
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'retromarine'").reverse
  end

  def self.sunday_somewhere
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'sunday somewhere'").reverse
  end

  def self.timberland
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'timberland'").reverse
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
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'")
  end

  def self.women_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Accessories'").reverse
  end

  def self.women_jean_legging
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Jeans'").reverse
  end

  def self.women_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Home'").reverse
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

  def self.women_lorna_jane
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'lorna jane'").reverse
  end

  def self.women_daniel_wellington
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'daniel wellington'").reverse
  end


  def self.women_forever_21
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'forever21'").reverse
  end

  def self.women_sunday_somewhere
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'sunday somewhere'").reverse
  end

  def self.women_sea_folly
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'seafolly'").reverse
  end

  def self.women_top_shop
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'topshop'").reverse
  end

  def self.women_victorias_secret
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'victoria''s secret'").reverse
  end

  def self.women_auguste
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'auguste'").reverse
  end

  def self.women_tony_bianco
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'tony bianco'").reverse
  end

  def self.women_alice_mccall
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'alice mccall'").reverse
  end
end
