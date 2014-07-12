Rails.application.routes.draw do
  devise_for :users

  resources :events
  resources :queries #, only: [:create, :new, :show]

  #get 'browse', to: 'queries#new'
  root 'home#show'
end

# Forget about renaming for now, get queries controller working
