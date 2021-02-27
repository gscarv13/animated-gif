Rails.application.routes.draw do
  devise_for :users
  resources :gifs
  resources :users, only: [:show]

  get '*tag', to: 'gifs#random', as: :random_gif # this maps any tag to random action

  root to: 'gifs#index'
end
