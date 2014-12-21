Rails.application.routes.draw do

  devise_for :users
  resources :lists
  resources :items
  delete '/items/:id(.:format)' => 'items#destroy'
  post '/items/upvote/:id' => 'items#upvote', :as => :upvote

  root to: 'static#homepage'
end
