class AddFeaturedToFashionItems < ActiveRecord::Migration
  def change
    add_column :fashion_items, :featured_item, :boolean
  end
end