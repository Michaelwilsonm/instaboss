# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



5.times do

  FashionItem.create(
    sex: "Mens",
    brand: ["Nike", 'Reebok', 'Prada'].sample,
    description: "HELO",
    category: "Accessories",
    sub_category: ['Underwear & Socks','Hats & Grooming', 'Jewellery' ].sample,
    price: 60.1,
    )
end
