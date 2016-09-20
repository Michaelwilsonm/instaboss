class CreateShopTheLookImages < ActiveRecord::Migration
  def change
    create_table :shop_the_look_images do |t|
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
