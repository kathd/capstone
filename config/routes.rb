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

  #lodging
  get "/trips/:trip_id/lodgings" => "lodgings#index"
  get "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#show"
  post "/trips/:trip_id/lodgings" => "lodgings#create"
  patch "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#update"
  delete "/trips/:trip_id/lodgings/:lodging_id" => "lodgings#destroy"

  #transportation
  get "/trips/:trip_id/transportations" => "transportations#index"
  get "/trips/:trip_id/transportations/:transportation_id" => "transportations#show"
  post "/trips/:trip_id/transportations" => "transportations#create"
  patch "/trips/:trip_id/transportations/:transportation_id" => "transportations#update"
  delete "/trips/:trip_id/transportations/:transportation_id" => "transportations#destroy"

  #boards
  post "/trips/:trip_id/boards" => "boards#create"
  patch "/trips/:trip_id/boards/:board_id" => "boards#update"
  delete "/trips/:trip_id/boards/:board_id" => "boards#destroy"

  #items

end
