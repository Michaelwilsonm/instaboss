class AddAttachmentShopLookImageToShopTheLookImages < ActiveRecord::Migration
  def self.up
    change_table :shop_the_look_images do |t|
      t.attachment :shop_look_image
    end
  end

  def self.down
    remove_attachment :shop_the_look_images, :shop_look_image
  end
end
