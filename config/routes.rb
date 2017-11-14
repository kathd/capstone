Rails.application.routes.draw do
  
  root to: "pages#index"

  #signup
  
  post "/users" => "users#create"
  get "/users/:user_id/edit" => "users#edit"
  patch "/users/:user_id" => "users#update"
  delete "/users/:user_id" => "users#destroy"

  #login & logout
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #trips
  resources :trips

  #boards
  post "/trips/:trip_id/boards" => "boards#create"
  patch "/trips/:trip_id/boards/:board_id" => "boards#update"
  delete "/trips/:trip_id/boards/:board_id" => "boards#destroy"

  #items
  post "/trips/:trip_id/boards/:board_id/items" => "items#create"
  patch "/trips/:trip_id/boards/:board_id/items/:item_id" => "items#update"
  delete "/trips/:trip_id/boards/:board_id/items/:item_id" => "items#destroy"

end
