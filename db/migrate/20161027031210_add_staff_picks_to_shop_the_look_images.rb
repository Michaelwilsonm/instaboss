class AddStaffPicksToShopTheLookImages < ActiveRecord::Migration
  def change
    add_column :shop_the_look_images, :staff_picks, :boolean
  end
end
