Rails.application.routes.draw do
  devise_for :users
  resources :orders
  root 'store#index'
  resources :line_items
  resources :carts
  get 'products/index'
  resources :products
end
