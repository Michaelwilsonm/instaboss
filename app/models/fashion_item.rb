class FashionItem < ActiveRecord::Base
  belongs_to :user
  has_attached_file :item_image, styles: { medium: "300x300>" }
  validates_attachment_content_type :item_image, content_type: /\Aimage\/.*\Z/

  def self.all_mens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens'")
  end

  def self.all_mens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'")
  end

  def self.all_womens_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens'")
  end

  def self.all_womens_on_sale
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Womens' AND sale = 'true'")
  end

  def self.three_special_items
    FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sex = 'Mens' AND sale = 'true'").sample(3)
  end

end
