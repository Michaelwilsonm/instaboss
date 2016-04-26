class CreateFashionItems < ActiveRecord::Migration
  def change
    create_table :fashion_items do |t|
      t.string :sex
      t.string :brand
      t.string :photo_url
      t.string :description
      t.string :category
      t.string :sub_category
      t.boolean :sale, null: false, default: false
      t.integer :percentage_off
      t.decimal :price, :precision => 5, :scale => 2
      t.string :unique_affiliate_url
      t.timestamps null: false
    end
  end
end
