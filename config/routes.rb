Rails.application.routes.draw do
  devise_for :users
  get 'users/new'

  get 'users/create'

  get 'users/show'

  get 'users/sign_up'

  get 'users/log_in'

  root 'home#index'
  resources :users
end
