class AddDescribeTheLookToShopTheLookImage < ActiveRecord::Migration
  def change
    add_column :shop_the_look_images, :describe_the_look, :string
  end
end
