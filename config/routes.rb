Rails.application.routes.draw do
  root 'store#index'
  resources :line_items
  resources :carts
  get 'products/index'
  resources :products
end
