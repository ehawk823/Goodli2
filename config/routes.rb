Rails.application.routes.draw do
  devise_for :users
  resources :users, :only => [:show, :index]
  get 'users/show'
  patch '/users/:id', to: 'users#update'
  get 'users/update'
  post '/points', to: 'points#create'
  get 'events/:id/rsvp', to: 'events#rsvp', as: :rsvp
  post 'events/:id', to: 'events#destroy'
  root 'events#index'
  # get 'event#new'
  resources :events
end
