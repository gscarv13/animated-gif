Rails.application.routes.draw do
  resources :gifs
  devise_for :users

  get '*tag', to: 'gifs#random', as: :random_gif # this maps any tag to random action

  root to: 'gifs#index'
end
