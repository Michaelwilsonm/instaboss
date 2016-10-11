img = File.open(File.join(Rails.root, '/app/assets/images/dog.jpg'))

User.create(email: "mike@mike.com", password: "hello123")
User.create(email: "mike@email.com", password: "hello123")
Admin.create(email: "josh@josh.com", password: "hello123")

10.times do
    ShopTheLookImage.create(
        shop_look_image: img,
        user_id: 1,
    )

    ShopTheLookItem.create(
        shop_the_look_image_id: 103,
        brand: "michael"
    )
end

25.times do

  FashionItem.create(
    item_image: img,
    unique_affiliate_url: "www.google.com",
    user_id: 1,
    shipped_from: "UK / Europe",
    sex: "Mens",
    brand: ['MVMT', 'Morepork', 'just another fisherman', 'timberland'].sample,
    description: "Description of product",
    category: "Accessories",
    sub_category: ['Lingerie & Underwear','Hats', 'Bags & Purses', 'Jewellery' ].sample,
    price: 60.0,
    short_description: "Too awesome to say",
    sale: [true, false].sample,
    featured_item: [true, false].sample,
    staff_picks: [true, false].sample,
    wwshipping: [true, false].sample,
    )
end

25.times do

  FashionItem.create(
    item_image: img,
    unique_affiliate_url: "www.google.com",
    user_id: 2,
    shipped_from: "UK / Europe",
    sex: "Womens",
    brand: ['MVMT', 'Morepork', 'just another fisherman', 'timberland'].sample,
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
