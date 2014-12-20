Rails.application.routes.draw do

  resources :lists
  resources :items
  root to: 'static#homepage'

end
