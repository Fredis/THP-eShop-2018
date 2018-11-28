Rails.application.routes.draw do

  resources :items
  devise_for :views
  devise_for :users
  get 'home/index'
  root 'home#index'

end
