Rails.application.routes.draw do
  get 'men/index'

  get 'women/index'

  devise_for :users
  root "site#index"

  get 'women' => 'women#index'
  get 'men' => 'men#index'
  get 'kid' => 'kid#index'
  get 'sale' => 'sale#index'

end
