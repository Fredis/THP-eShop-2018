Rails.application.routes.draw do

	
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/index'
resources :items, only: [:show, :index]

 devise_for :views
 devise_for :users
 get 'home/index'
 root 'home#index'

end
