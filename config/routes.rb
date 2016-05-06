Rails.application.routes.draw do
  root to: "home#index"

  # user routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  # post "/users", to: "users#create"
  # get "users/:id", to: "users#show", as: "user"
  #
  # #sign_in/out session routes
  # get "/login", to: "sessions#new"
  # get "/logout", to: "sessions#destroy"
  # post "/sessions", to: "sessions#create"

end
