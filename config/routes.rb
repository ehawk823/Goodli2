Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/show'

  root 'home#index'
  resources :users
end
