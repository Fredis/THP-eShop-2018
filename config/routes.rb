Rails.application.routes.draw do


resources :items, only: [:show, :index]

 devise_for :views
 devise_for :users
 root 'home#index', :controller => "items", :action => "index"

end
