Rails.application.routes.draw do

get "add-item-to-cart/:id", to: "items#add_to_cart"
get "paymenthistory", to: "orders#payment_history"
post "order_validation", to: "orders#order_validation"

resources :items, only: [:show, :index]
resources :carts, only: [:show, :new, :create, :destroy]
resources :orders
resources :charges

devise_for :views
devise_for :users
root 'home#index' #, :controller => "items", :action => "index"

end
