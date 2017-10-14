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
  get "/trips" => "trips#index"
  post "/trips" => "trips#create"
  get "/trips/:id" => "trips#show"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"

  #boards
  post "/trips/:id" => "boards#create"
  patch "/trips/:id/boards/:board_id" => "boards#update"

end
