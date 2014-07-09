Rails.application.routes.draw do

  resources :showtimes
  resources :events

  devise_for :users
  root 'home#show'
end
