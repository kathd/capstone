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

  #lodging
  get "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#show"
  post "/trips/:trip_id/lodgings" => "lodgings#create"
  patch "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#update"
  delete "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#destroy"

  #transportation
  get "/trips/:trip_id/transportations/:transportation_id" => "transportations#show"
  post "/trips/:trip_id/transportations" => "transportations#create"
  patch "/trips/:trip_id/transportations/:transportation_id" => "transportations#update"
  delete "/trips/:trip_id/transportations/:transportation_id" => "transportations#destroy"

  #boards
  post "/trips/:trip_id/boards" => "boards#create"
  patch "/trips/:trip_id/boards/:board_id" => "boards#update"
  delete "/trips/:trip_id/boards/:board_id" => "boards#destroy"

  #items
  post "/trips/:trip_id/boards/:board_id/items" => "items#create"
  patch "/trips/:trip_id/boards/:board_id/items/:item_id" => "items#update"
  # patch "/trips/:trip_id/boards/:board_id/items/:item_id" => "items#move"
  delete "/trips/:trip_id/boards/:board_id/items/:item_id" => "items#destroy"

end
