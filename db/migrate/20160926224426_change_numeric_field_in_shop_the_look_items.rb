class ChangeNumericFieldInShopTheLookItems < ActiveRecord::Migration
  def change
   change_column :shop_the_look_items, :price, :decimal, :precision => 8, :scale => 2
  end
end
