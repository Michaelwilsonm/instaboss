class ChangeNumericFieldInFashionItems < ActiveRecord::Migration
  def self.up
   change_column :fashion_items, :price, :decimal, :precision => 8, :scale => 2
  end
end
