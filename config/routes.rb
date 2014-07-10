Rails.application.routes.draw do

  resources :showtimes, only: [:index, :show]
  resources :events
  resources :queries, only: [:create]
  get 'browse', to: 'queries#new'

  devise_for :users
  root 'home#show'
end
