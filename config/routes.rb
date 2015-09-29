Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show]
  get 'users/show'
  get 'users/update'
  root 'home#index'
end
