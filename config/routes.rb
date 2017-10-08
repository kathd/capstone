Rails.application.routes.draw do
  #signup
  get "/signup" => "users#new"
  post "/users" => "users#create"

  #login & logout
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  
  get "/logout" => "sessions#destroy"




end
