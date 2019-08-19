Rails.application.routes.draw do
  devise_for :users
  root  'products#index'
  resources :products
  resources :users, only: [:show,:index] do
    collection do
      get 'search'
    end
  end
  resources :items, only: [:create]
  resources :stylegenres,  only:[:show]  
    


end
