Rails.application.routes.draw do

  get 'item/index'

  devise_for :users

  resources :item

  root "site#index"

  get 'women' => 'women#index'
  get 'men' => 'men#index'
  get 'kid' => 'kid#index'
  get 'sale' => 'sale#index'

end
