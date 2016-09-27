class AddDescriptionToShopTheLookItems < ActiveRecord::Migration
  def change
    add_column :shop_the_look_items, :description, :string
  end
end
