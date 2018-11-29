Rails.application.routes.draw do

get "add-item-to-cart/:id", to: "items#add_to_cart"
get "paymenthistory", to: "orders#payment_history"
post "order_validation", to: "orders#order_validation"

resources :items, only: [:show, :index]
resources :carts, only: [:show, :new, :create, :destroy], path:'', path_names: {carts: 'carts'}
resources :orders
resources :charges

devise_for :views
devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
root 'home#index' #, :controller => "items", :action => "index"

end
