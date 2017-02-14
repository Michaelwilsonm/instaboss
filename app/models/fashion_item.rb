class FashionItem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :item_image, styles: { original: "600x600>", medium: "300x300>", thumb: "100x100>"}
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/
  before_save do
    self.brand = brand.split.map(&:downcase).join(' ')
  end

  def self.men_categories(category_item)
    FashionItem.where(["sex = ? and category = ?", "Mens", category_item]).order("created_at DESC")
  end

  def self.men_sub_categories(sub_category_item)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sub_category =" + "'" + sub_category_item + "'" + "ORDER BY created_at DESC")
  end

  def self.more_you_might_like(type_of_item, sex_of_item)
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = " + "'" + sex_of_item + "'" + " AND category = " + "'" + type_of_item + "'" + " ORDER BY RANDOM() LIMIT 6")
  end

  def self.sales
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sale = true ORDER BY created_at DESC")
  end

  def self.all_mens_items_ALL
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' ORDER BY created_at DESC")
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

  def self.men_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Accessories' ORDER BY created_at DESC")
  end

  def self.men_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Lifestyle' ORDER BY created_at DESC")
  end

  def self.men_long
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Longs' ORDER BY created_at DESC")
  end

  def self.men_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shoes' ORDER BY created_at DESC")
  end

  def self.men_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Tops' ORDER BY created_at DESC")
  end

  def self.men_short
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts' ORDER BY created_at DESC")
  end

  def self.men_short_swimwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Shorts' ORDER BY created_at DESC")
  end

  def self.men_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND category = 'Sunglasses' ORDER BY created_at DESC")
  end

  def self.bjorn_borg
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'bjorn borg' ORDER BY created_at DESC")
  end

  def self.leo_joseph
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'leo joseph' ORDER BY created_at DESC")
  end

  def self.nike_mens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'nike' ORDER BY created_at DESC")
  end

  def self.daniel_wellington
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'daniel wellington' ORDER BY created_at DESC")
  end

  def self.just_another_fisherman
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'just another fisherman' ORDER BY created_at DESC")
  end

  def self.morepork
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'moreporks' ORDER BY created_at DESC")
  end

  def self.new_balance
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'new balance' ORDER BY created_at DESC")
  end

  def self.bronze_snake
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'bronze snake' ORDER BY created_at DESC")
  end

  def self.windsor_smith
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'windsor smith' ORDER BY created_at DESC")
  end

  def self.mj_bale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'mj bale' ORDER BY created_at DESC")
  end

  def self.adidas
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'adidas originals' ORDER BY created_at DESC")
  end

  def self.the_modest_vintage_player
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'the modest vintage player' ORDER BY created_at DESC")
  end

  def self.mvmt
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'mvmt' ORDER BY created_at DESC")
  end

  def self.nautica
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'nautica' ORDER BY created_at DESC")
  end

  def self.retro_marine
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'retromarine' ORDER BY created_at DESC")
  end

  def self.sunday_somewhere
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'sunday somewhere' ORDER BY created_at DESC")
  end

  def self.i_love_ugly
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND brand = 'i love ugly' ORDER BY created_at DESC")
  end







#WOMENS
  def self.all_womens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'false' ORDER BY created_at DESC")
  end

  def self.all_womens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true' ORDER BY created_at DESC")
  end

  def self.featured_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND featured_item = 'true' ORDER BY created_at DESC")
  end


  def self.nine_special_items_womens
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'")
  end

  def self.women_accessorie
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Accessories' ORDER BY created_at DESC")
  end

  def self.women_jean_legging
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Jeans' ORDER BY created_at DESC")
  end

  def self.women_lifestyle
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Home' ORDER BY created_at DESC")
  end

  def self.women_dress
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Dresses' ORDER BY created_at DESC")
  end

  def self.women_shoe
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shoes' ORDER BY created_at DESC")
  end

  def self.women_short_skirt
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Shorts' ORDER BY created_at DESC")
  end

  def self.women_sunglass_watch
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Sunglasses' ORDER BY created_at DESC")
  end

  def self.women_swim_beachwear
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Swim' ORDER BY created_at DESC")
  end

  def self.women_top
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND category = 'Tops' ORDER BY created_at DESC")
  end


  def self.staff_picked_women_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND staff_picks = 'true' ORDER BY created_at DESC")
  end

  def self.all_womens_items_ALL
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' ORDER BY created_at DESC")
  end

  def self.women_lorna_jane
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'lorna jane' ORDER BY created_at DESC")
  end

  def self.women_daniel_wellington
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'daniel wellington' ORDER BY created_at DESC")
  end


  def self.women_forever_21
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'forever21' ORDER BY created_at DESC")
  end

  def self.women_sunday_somewhere
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'sunday somewhere' ORDER BY created_at DESC")
  end

  def self.women_sea_folly
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'seafolly' ORDER BY created_at DESC")
  end

  def self.women_top_shop
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'topshop' ORDER BY created_at DESC")
  end

  def self.women_victorias_secret
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'victoria''s secret' ORDER BY created_at DESC")
  end

  def self.women_auguste
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'auguste' ORDER BY created_at DESC")
  end

  def self.women_tony_bianco
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'tony bianco' ORDER BY created_at DESC")
  end

  def self.women_alice_mccall
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'alice mccall' ORDER BY created_at DESC")
  end

  def self.women_senso
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'senso' ORDER BY created_at DESC")
  end

  def self.women_samantha_willis
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'samantha wills' ORDER BY created_at DESC")
  end

  def self.women_mura
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'mura boutique' ORDER BY created_at DESC")
  end

  def self.women_jo_mercer
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'jo mercer' ORDER BY created_at DESC")
  end

  def self.women_princess_polly
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'princess polly' ORDER BY created_at DESC")
  end

  def self.women_esther
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'esther boutique' ORDER BY created_at DESC")
  end

  def self.women_showpo
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'showpo' ORDER BY created_at DESC")
  end

  def self.women_windsor_smith
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'windsor smith' ORDER BY created_at DESC")
  end

  def self.women_bronze_snake
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'bronze snake' ORDER BY created_at DESC")
  end

  def self.women_new_balance
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'new balance' ORDER BY created_at DESC")
  end

  def self.women_coopers_st
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND brand = 'cooper st' ORDER BY created_at DESC")
  end


end
