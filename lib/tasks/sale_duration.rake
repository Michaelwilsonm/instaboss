namespace :custom do
  desc "Check to see if the Sale length has expired"
  task :sale_duration => :environment do
    require 'date'
    sale_items = FashionItem.find_by_sql("SELECT * FROM fashion_items WHERE sale = true ORDER BY created_at DESC")
    sale_items.each do |f|
      if f.duration != nil && DateTime.now > f.duration
        f.update(:sale => false)
        f.update(:sale_price => 0.0)
        f.update(:duration => nil)
        f.save!
      end
    end
  end
end