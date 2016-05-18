class AddWwshippingToFashionItem < ActiveRecord::Migration
  def change
    add_column :fashion_items, :wwshipping, :string
  end
end
