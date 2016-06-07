# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FashionItem.delete_all

img = File.open(File.join(Rails.root, '/app/assets/images/dog.jpg'))

User.create(email: "mike@mike.com", password: "hello123")
User.create(email: "mike@email.com", password: "hello123")
Admin.create(email: "josh@josh.com", password: "hello123")

45.times do

  FashionItem.create(
    item_image: img,
    unique_affiliate_url: "www.google.com",
    user_id: 1,
    shipped_from: "USA",
    sex: "Womens",
    brand: ['Nike', 'Reebok', 'Prada', 'The Verve'].sample,
    description: "Description of product",
    category: "Accessories",
    sub_category: ['Lingerie & Underwear','Hats', 'Bags & Purses', 'Jewellery' ].sample,
    price: 60.0,
    short_description: "Too awesome to say",
    sale: [true, false].sample,
    featured_item: [true, false].sample,
    wwshipping: [true, false].sample,
    )
end

5.times do

  FashionItem.create(
    item_image: img,
    unique_affiliate_url: "www.google.com",
    user_id: 2,
    shipped_from: "USA",
    sex: "Mens",
    brand: ['Nike', 'Reebok', 'Prada', 'The Verve'].sample,
    description: "Description of product",
    category: "Accessories",
    sub_category: ['Underwear & Socks','Hats & Grooming', 'Jewellery' ].sample,
    price: 60.0,
    short_description: "Too awesome to say",
    sale: [true, false].sample,
    featured_item: [true, false].sample,
    staff_picks: [true, false].sample,
    wwshipping: [true, false].sample,
    )
end
