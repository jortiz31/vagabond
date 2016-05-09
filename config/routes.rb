Rails.application.routes.draw do

  root   to: "home#index"
  # user routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create", as: "post_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"
  # log in/out/session routes
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create", as: "new_session"
  # city routes
  get "/cities", to: "cities#index", as: "cities"
  get "/cities/:id", to: "cities#show", as: "city"
  get "/cities/:id/reviews/new", to: "reviews#new", as: "new_review"
  post "/users/:id/cities/:id/reviews", to: "reviews#create", as: "create_review"

  # review routes
  get "/users/:id/reviews", to: "reviews#index", as: "reviews"


  get "/users/:id/cities", to: "reviews#index", as: "user_cities"
  get "/users/:id/reviews/:id", to: "reviews#show", as: "user_review"
  get "/users/:id/cities/:id/reviews/:id/edit", to: "reviews#edit", as: "edit_reviews"
  patch "/users/:id/cities/:id/reviews/:id", to: "reviews#update", as: "update_reviews"
  delete "/users/:id/cities/:id/reviews/:id", to: "reviews#destroy", as: "destroy_reviews"
end
