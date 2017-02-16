Rails.application.routes.draw do

  resources :shop_the_look_items
  resources :shop_the_look_images
  get 'client/all'
  # delete 'session' => 'sessions#destroy'

  resources :client

  devise_for :admins
  resources :admin do
    collection do
      get 'shop_look_image'
    end
  end


  get 'blog/index'
  get 'blog/blog_women'
  get 'blog/mvp_blog'
  get 'blog/jaf_blog'
  get 'blog/retromarine_blog'
  get 'blog/auguste_blog'
  get 'blog/showpo_blog'


  get 'admin/shop_look_image'

  post 'admin/:id/update_staff_true' => 'admin#update_staff_true'
  post 'admin/:id/update_featured_true' => 'admin#update_featured_true'
  post 'admin/:id/update_staff_false' => 'admin#update_staff_false'
  post 'admin/:id/update_featured_false' => 'admin#update_featured_false'

  post 'admin/:id/update_shop_staff_true' => 'admin#update_shop_staff_true'
  post 'admin/:id/update_shop_featured_true' => 'admin#update_shop_featured_true'
  post 'admin/:id/update_shop_staff_false' => 'admin#update_shop_staff_false'
  post 'admin/:id/update_shop_featured_false' => 'admin#update_shop_featured_false'

  # post 'admin/featured_item'
  # post 'admin/update_staff'

  # post 'men_brand/search' => 'men_brand#search', as: 'men_search_brand'
  post 'men_brand/side_search' => 'men_brand#side_search', as: 'men_side_search_brand'

  get 'men_brand/mobile_men_search'
  get 'men_brand/leo_joseph'
  get 'men_brand/windsor_smith'
  get 'men_brand/bronze_snake'
  get 'men_brand/adidas'
  get 'men_brand/mj_bale'
  get 'men_brand/the_modest_vintage_player'
  get 'men_brand/new_balance'
  get 'men_brand/daniel_wellington'
  get 'men_brand/just_another_fisherman'
  get 'men_brand/mvmt'
  get 'men_brand/morepork'
  get 'men_brand/retro_marine'
  get 'men_brand/sunday_somewhere'
  get 'men_brand/i_love_ugly'
  get 'men_brand/nike'

  # post 'women_brand/search' => 'women_brand#search', as: 'women_search_brand'
  post 'women_brand/side_search' => 'women_brand#side_search', as: 'women_side_search_brand'

  # post 'women_brand/side_search' => 'women_brand#side_search', as: 'mobile_women_search'

  get 'women_brand/mobile_women_search'
  get 'women_brand/lorna_jane'
  get 'women_brand/windsor_smith'
  get 'women_brand/bronze_snake'
  get 'women_brand/coopers_st'
  get 'women_brand/new_balance'
  get 'women_brand/tony_bianco'
  get 'women_brand/sunday_somewhere'
  get 'women_brand/showpo'
  get 'women_brand/mura'
  get 'women_brand/esther'
  get 'women_brand/senso'
  get 'women_brand/samantha_wills'
  get 'women_brand/princess_polly'
  get 'women_brand/jo_mercer'
  get 'women_brand/daniel_wellington'
  get 'women_brand/alice_mccall'
  get 'women_brand/auguste'
  get 'women_brand/sea_folly'

  post 'brand/search_men' => 'brand#search_men', as: 'search_brand_men'

  get 'site/about'
  get 'site/contact'

  devise_for :users

  resources :item
  get 'site/sale_mens'
  get 'site/sale_womens'

  root "site#index"

  get 'women' => 'women#index'
  get 'women/about'
  get 'women/contact'
  get 'women/brand'

  get 'men' => 'men#index'
  get 'men/brand'
  get 'men/about'
  get 'men/contact'

  get 'men/all'

  get 'men/shop_the_look' => 'sub_cat_men/shop_the_look#shop_the_look'
  get 'men/shop_the_look/casual' => 'sub_cat_men/shop_the_look#casual'
  get 'men/shop_the_look/going_out' => 'sub_cat_men/shop_the_look#going_out'
  get 'men/shop_the_look/working_out' => 'sub_cat_men/shop_the_look#working_out'
  get 'men/shop_the_look/other' => 'sub_cat_men/shop_the_look#other'

  get 'men/short_swimwear' => 'sub_cat_men/short_swimwear#short_swimwear'
  get 'men/short_swimwear/short' => 'sub_cat_men/short_swimwear#short'
  get 'men/short_swimwear/swimwear' => 'sub_cat_men/short_swimwear#swimwear'

  get 'men/sunglass_watch' => 'sub_cat_men/sunglass_watch#sunglass_watch'
  get 'men/sunglass_watch/sunglass' => 'sub_cat_men/sunglass_watch#sunglass'
  get 'men/sunglass_watch/watch' => 'sub_cat_men/sunglass_watch#watch'

  get 'men/top' => 'sub_cat_men/top#top'
  get 'men/top/polo' => 'sub_cat_men/top#polo'
  get 'men/top/shirt' => 'sub_cat_men/top#shirt'
  get 'men/top/hoodie' => 'sub_cat_men/top#hoodie'
  get 'men/top/jacket' => 'sub_cat_men/top#jacket'

  get 'men/shoe' => 'sub_cat_men/shoe#shoe'
  get 'men/shoe/boat' => 'sub_cat_men/shoe#boat'
  get 'men/shoe/boot' => 'sub_cat_men/shoe#boot'
  get 'men/shoe/trainer' => 'sub_cat_men/shoe#trainer'
  get 'men/shoe/formal' => 'sub_cat_men/shoe#formal'
  get 'men/shoe/other' => 'sub_cat_men/shoe#other'

  get 'men/long' => 'sub_cat_men/long#long'
  get 'men/long/chino' => 'sub_cat_men/long#chino'
  get 'men/long/jean' => 'sub_cat_men/long#jean'
  get 'men/long/jogger' => 'sub_cat_men/long#jogger'

  get 'men/lifestyle' => 'sub_cat_men/lifestyle#lifestyle'

  get 'men/formal' => 'sub_cat_men/formal#formal'
  get 'men/formal/jacket_coat' => 'sub_cat_men/formal#jacket_coat'
  get 'men/formal/suit' => 'sub_cat_men/formal#suit'
  get 'men/formal/accessory' => 'sub_cat_men/formal#accessory'

  get 'men/accessory' => 'sub_cat_men/accessory#accessory'
  get 'men/accessory/hat' => 'sub_cat_men/accessory#hat'
  get 'men/accessory/bag' => 'sub_cat_men/accessory#bag'
  get 'men/accessory/jewellery' => 'sub_cat_men/accessory#jewellery'
  get 'men/accessory/other' => 'sub_cat_men/accessory#other'

  # WOMEN ROUTES

  get 'women/shop_the_look' => 'sub_cat_women/shop_the_look#shop_the_look'
  get 'women/shop_the_look/casual' => 'sub_cat_women/shop_the_look#casual'
  get 'women/shop_the_look/going_out' => 'sub_cat_women/shop_the_look#going_out'
  get 'women/shop_the_look/working_out' => 'sub_cat_women/shop_the_look#working_out'
  get 'women/shop_the_look/other' => 'sub_cat_women/shop_the_look#other'

  get 'women/short_swimwear' => 'sub_cat_women/short_swimwear#short_swimwear'
  get 'women/short_swimwear/bikini' => 'sub_cat_women/short_swimwear#bikini'
  get 'women/short_swimwear/other' => 'sub_cat_women/short_swimwear#other'
  get 'women/short_swimwear/swimsuit' => 'sub_cat_women/short_swimwear#swimsuit'

  get 'women/sunglass_watch' => 'sub_cat_women/sunglass_watch#sunglass_watch'
  get 'women/sunglass_watch/sunglass' => 'sub_cat_women/sunglass_watch#sunglass'
  get 'women/sunglass_watch/watch' => 'sub_cat_women/sunglass_watch#watch'

  get 'women/short' => 'sub_cat_women/short#short'
  get 'women/short/short_only' => 'sub_cat_women/short#short_only'
  get 'women/short/skirt' => 'sub_cat_women/short#skirt'

  get 'women/shoe' => 'sub_cat_women/shoe#shoe'
  get 'women/shoe/boot' => 'sub_cat_women/shoe#boot'
  get 'women/shoe/trainer' => 'sub_cat_women/shoe#trainer'
  get 'women/shoe/heel' => 'sub_cat_women/shoe#heel'
  get 'women/shoe/flat' => 'sub_cat_women/shoe#flat'

  get 'women/jean_trouser' => 'sub_cat_women/jean_trouser#jean_trouser'
  get 'women/jean_troser/jean' => 'sub_cat_women/jean_troser#jean'
  get 'women/jean_troser/trouser' => 'sub_cat_women/jean_troser#trouser'
  get 'women/jean_troser/legging' => 'sub_cat_women/jean_troser#legging'

  get 'women/home' => 'sub_cat_women/home#home'

  get 'women/dress' => 'sub_cat_women/dress#dress'
  get 'women/dress/day' => 'sub_cat_women/dress#day'
  get 'women/dress/evening' => 'sub_cat_women/dress#evening'
  get 'women/dress/playsuit' => 'sub_cat_women/dress#playsuit'


  get 'women/accessory' => 'sub_cat_women/accessory#accessory'
  get 'women/accessory/lingerie' => 'sub_cat_women/accessory#lingerie'
  get 'women/accessory/hat' => 'sub_cat_women/accessory#hat'
  get 'women/accessory/jewellery' => 'sub_cat_women/accessory#jewellery'
  get 'women/accessory/bag' => 'sub_cat_women/accessory#bag'
  get 'women/accessory/other' => 'sub_cat_women/accessory#other'

  get 'women/top' => 'sub_cat_women/top#top'
  get 'women/top/tshirt_vest' => 'sub_cat_women/top#tshirt_vest'
  get 'women/top/shirt_blouse' => 'sub_cat_women/top#shirt_blouse'
  get 'women/top/hoodie_sweat_shirt' => 'sub_cat_women/top#hoodie_sweat_shirt'
  get 'women/top/jacket_coat' => 'sub_cat_women/top#jacket_coat'

end
