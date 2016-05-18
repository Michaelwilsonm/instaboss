class AddStaffPicksToFashionItem < ActiveRecord::Migration
  def change
    add_column :fashion_items, :staff_picks, :string
  end
end
