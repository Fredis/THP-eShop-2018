Rails.application.routes.draw do

get "add-item-to-cart/:id", to: "items#add_to_cart"
get "paymenthistory", to: "orders#payment_history"
post "order_validation", to: "orders#order_validation"

resources :smartphones, only: [:show, :index, :create, :new]

resources :items, only: [:show, :index], path: :pictures
resources :carts, only: [:show, :new, :create, :destroy], path: 'user_cart'
resources :orders, path: :order_confirmation
resources :charges

devise_for :views
devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile'}
root 'home#index' #, :controller => "items", :action => "index"

end
