class AddFeaturedToShopTheLookImages < ActiveRecord::Migration
  def change
    add_column :shop_the_look_images, :featured_item, :boolean
  end
end