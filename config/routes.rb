Rails.application.routes.draw do

  devise_for :admins
  get 'admin/index'

  get 'item/index'
  get 'site/about'
  get 'site/contact'

  devise_for :users

  resources :item

  root "site#index"

  get 'women' => 'women#index'
  get 'women/accessorie'
  get 'women/dress'
  get 'women/jean_legging'
  get 'women/lifestyle'
  get 'women/shoe'
  get 'women/short_skirt'
  get 'women/sunglass_watch'
  get 'women/swim_beachwear'
  get 'women/top'

  get 'men' => 'men#index'
  get 'men/formal'
  get 'men/lifestyle'
  get 'men/long'
  get 'men/shoe'
  get 'men/top'
  get 'men/short_swimwear'
  get 'men/sunglass_watch'
  get 'men/accessorie'


  get 'sale' => 'sale#index'

end
