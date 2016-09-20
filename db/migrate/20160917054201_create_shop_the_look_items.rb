class CreateShopTheLookItems < ActiveRecord::Migration
  def change
    create_table :shop_the_look_items do |t|
      t.references :shop_the_look_image, index: true, foreign_key: true
      t.string :gender
      t.string :category
      t.string :sub_category
      t.string :brand
      t.decimal :price, :precision => 5, :scale => 2
      t.boolean :sale, null: false, default: false
      t.decimal :sale_price, :precision => 5, :scale => 2, :default => 0.0
      t.string :unique_affiliate_url
      t.string :shipped_from
      t.integer :percentage_off
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
