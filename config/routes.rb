Rails.application.routes.draw do

  root   to: "home#index"
  # user routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "users/:id", to: "users#show", as: "user"
  # log in/out/session routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  # city routes
  get "/cities", to: "cities#index", as: "city"
  get "/cities/new", to: "cities#new", as: "new_city"
  post "cities", to: "cities#create"

  # review routes
  get "/users/:user_id/cities", to: "reviews#index", as: "user_cities"
  post "cities/:city_id/users", to: "reviews#create", as: "reviews"

end
