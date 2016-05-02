Rails.application.routes.draw do

  get 'item/index'
  get 'site/about'
  get 'site/contact'

  devise_for :users

  resources :item

  root "site#index"

  get 'women' => 'women#index'

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
