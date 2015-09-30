Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show, :index]
  get 'users/show'
  get 'users/update'
  root 'events#index'
  # get 'event#new'
  resources :events
end
