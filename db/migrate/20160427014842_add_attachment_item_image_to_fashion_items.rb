class AddAttachmentItemImageToFashionItems < ActiveRecord::Migration
  def self.up
    change_table :fashion_items do |t|
      t.attachment :item_image
    end
  end

  def self.down
    remove_attachment :fashion_items, :item_image
  end
end
