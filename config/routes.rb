Rails.application.routes.draw do

  get 'client/all'
  # delete 'session' => 'sessions#destroy'

  resources :client

  devise_for :admins
  resources :admin

  post 'admin/featured_item'

  # post 'men_brand/search' => 'men_brand#search', as: 'men_search_brand'
  post 'men_brand/side_search' => 'men_brand#side_search', as: 'men_side_search_brand'
  get 'men_brand/bjorn_borg'
  get 'men_brand/new_balance'
  get 'men_brand/daniel_wellington'
  get 'men_brand/just_another_fisherman'
  get 'men_brand/mvmt'
  get 'men_brand/morepork'
  get 'men_brand/nautica'
  get 'men_brand/retro_marine'
  get 'men_brand/sunday_somewhere'
  get 'men_brand/i_love_ugly'

  # post 'women_brand/search' => 'women_brand#search', as: 'women_search_brand'
  post 'women_brand/side_search' => 'women_brand#side_search', as: 'women_side_search_brand'
  get 'women_brand/lorna_jane'
  get 'women_brand/tony_bianco'
  get 'women_brand/sunday_somewhere'
  get 'women_brand/forever_21'
  get 'women_brand/daniel_wellington'
  get 'women_brand/alice_mccall'
  get 'women_brand/auguste'
  get 'women_brand/sea_folly'
  get 'women_brand/top_shop'
  get 'women_brand/victorias_secret'


  post 'brand/search_men' => 'brand#search_men', as: 'search_brand_men'

  get 'site/about'
  get 'site/contact'


  devise_for :users

  resources :item
  get 'site/sale_mens'
  get 'site/sale_womens'

  root "site#index"

  get 'women' => 'women#index'
  get 'women/all'
  get 'women/accessorie'
  get 'women/dress'
  get 'women/jean_legging'
  get 'women/lifestyle'
  get 'women/shoe'
  get 'women/short_skirt'
  get 'women/sunglass_watch'
  get 'women/swim_beachwear'
  get 'women/top'
  get 'women/about'
  get 'women/contact'
  get 'women/brand'


  get 'men' => 'men#index'
  get 'men/brand'
  get 'men/all'
  get 'men/formal'
  get 'men/lifestyle'
  get 'men/long'
  get 'men/shoe'
  get 'men/top'
  get 'men/short_swimwear'
  get 'men/sunglass_watch'
  get 'men/accessorie'
  get 'men/about'
  get 'men/contact'
end
