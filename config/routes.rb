Rails.application.routes.draw do

  devise_for :users
  resources :lists
  resources :items
  root to: 'static#homepage'

end
