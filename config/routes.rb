Rails.application.routes.draw do

  get 'client/client'
  post 'client/create'
  devise_for :admins
  resources :admin

  post 'admin/featured_item'

  post 'brand/search' => 'brand#search', as: 'search_brand'
  post 'brand/side_search' => 'brand#side_search', as: 'side_search_brand'
  get 'brand/lorna_jane'
  get 'brand/sunday_somewhere'
  get 'brand/forever_21'
  get 'brand/fcuk'
  get 'brand/nautica'
  get 'brand/daniel_wellington'


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
