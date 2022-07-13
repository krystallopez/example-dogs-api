Rails.application.routes.draw do
  
get "/dogs" => "dogs#index"
get "/dogs/:id" => "dogs#show"
post "/dogs" => "dogs#create"

# user create 
post "/users" => "users#create"


end
