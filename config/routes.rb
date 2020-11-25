Rails.application.routes.draw do
  resources :orders
  resources :carts
  resources :products 
  devise_for :users
  root to: "products#index"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
