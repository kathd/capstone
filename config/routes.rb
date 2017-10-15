Rails.application.routes.draw do
  #signup
  get "/signup" => "users#new"
  post "/users" => "users#create"
  delete "/users/:id" => "users#destroy"

  #login & logout
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #trips
  resources :trips

  #boards
  post "/trips/:trip_id/boards" => "boards#create"
  patch "/trips/:trip_id/boards/:id" => "boards#update"
  delete "/trips/:trip_id/boards/:id" => "boards#destroy"

end
