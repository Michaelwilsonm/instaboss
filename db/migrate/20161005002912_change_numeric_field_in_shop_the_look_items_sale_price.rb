class ChangeNumericFieldInShopTheLookItemsSalePrice < ActiveRecord::Migration
  def change
   change_column :shop_the_look_items, :sale_price, :decimal, :precision => 8, :scale => 2
  end
end
