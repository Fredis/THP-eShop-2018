Rails.application.routes.draw do

resources :items, only: [:show, :index]
resources :carts, only: [:show, :new, :create, :destroy]

 devise_for :views
 devise_for :users
 root 'home#index', :controller => "items", :action => "index"

end
