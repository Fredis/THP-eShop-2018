Rails.application.routes.draw do


resources :items, only: [:show, :index]
resources :stripes, only: [:new, :create]

 devise_for :views
 devise_for :users
 get 'home/index'
 root 'home#index'

end
