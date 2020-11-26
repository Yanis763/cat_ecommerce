Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :carts
  resources :products
  root to: "products#index"

end
