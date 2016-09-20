class AddGenderToShopTheLookImages < ActiveRecord::Migration
  def change
    add_column :shop_the_look_images, :gender, :string
    add_column :shop_the_look_images, :ww_shipping, :string
  end
end
