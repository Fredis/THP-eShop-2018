Rails.application.routes.draw do

get "add-item-to-cart/:id", to: "items#add_to_cart"

resources :items, only: [:show, :index]
resources :carts, only: [:show, :new, :create, :destroy]
resources :orders
resources :stripes, only: [:new, :create]
post "orders/new", to: 'orders#index'
devise_for :views
devise_for :users
root 'home#index' #, :controller => "items", :action => "index"

end
