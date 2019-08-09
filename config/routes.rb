Rails.application.routes.draw do
  devise_for :users
  root  'products#index'
  resources :products
  resources :users, only: [:show]
  resources :items, only: [:create]
  resources :stylegenres,  only:[:index]
end
