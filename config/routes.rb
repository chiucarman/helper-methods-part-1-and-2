Rails.application.routes.draw do
  # get "/", controller: "movies", action: "index"
  
  # Super shorthand
  # get "/" => "movies#index"

  # even shorterhand for the root (homepage)
  root "movies#index"

  # Routes for the Movie resource:

  # CREATE
  post "/movies" => "movies#create"
  get "/movies/new" => "movies#new"
          
  # READ
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  
  # UPDATE
  patch "/movies/:id" => "movies#update"
  get "/movies/:id/edit" => "movies#edit"
  
  # DELETE
  delete "/movies/:id" => "movies#destroy"

  #------------------------------
end
