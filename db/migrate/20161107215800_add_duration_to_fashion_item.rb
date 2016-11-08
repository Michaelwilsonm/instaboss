class AddDurationToFashionItem < ActiveRecord::Migration
  def change
    add_column :fashion_items, :duration, :timestamp
  end
end
