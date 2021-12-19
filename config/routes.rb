Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show]

  get '/users/:user_id/items', to: 'users#show_items'
  get '/users/:user_id/items/:id', to: 'users#show_item'
  post '/users/:user_id/items', to: 'users#create_item'
  
end
