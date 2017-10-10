Rails.application.routes.draw do
  #signup
  get "/signup" => "users#new"
  post "/users" => "users#create"

  #login & logout
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #trips
  get "/trips" => "trips#index"
  get "/trips/new" => "trips#new"
  post "/trips" => "trips#create"
  get "/trips/:id" => "trips#show"
  get "/trips/:id/edit" => "trips#edit"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"

end
