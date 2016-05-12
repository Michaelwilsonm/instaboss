class AddShortDescriptionToFashionItems < ActiveRecord::Migration
  def change
    add_column :fashion_items, :short_description, :string
  end
end
