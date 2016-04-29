# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FashionItem.delete_all

img = File.open(File.join(Rails.root, '/app/assets/images/dog.jpg'))


15.times do

  FashionItem.create(
    unique_affiliate_url: "www.google.com",
    user_id: 1,
    shipped_from: "USA",
    sex: ["Mens", "Womens"].sample,
    brand: ["Nike", 'Reebok', 'Prada'].sample,
    description: "Description of product",
    category: "Accessories",
    sub_category: ['Underwear & Socks','Hats & Grooming', 'Jewellery' ].sample,
    price: 60.0,
    )
end
