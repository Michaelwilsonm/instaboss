class AddStaffPicksToFashionItem < ActiveRecord::Migration
  def change
    add_column :fashion_items, :staff_picks, :boolean
  end
end
