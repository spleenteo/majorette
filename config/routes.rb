Rails.application.routes.draw do

  resources :lists
  root to: 'static#homepage'

end
