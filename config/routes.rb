Rails.application.routes.draw do

  root   to: "home#index"
  # user routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create", as: "post_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  # log in/out/session routes
  get "/login", to: "sessions#new", as:"login"
  get "/logout", to: "sessions#destroy", as: "logout"
  post "/sessions", to: "sessions#create", as: "new_session"
  # city routes
  get "/cities", to: "cities#index", as: "cities"
  get "/cities/new", to: "cities#new", as: "new_city"
  post "/cities", to: "cities#create",  as: "post_city"
  get "/cities/:id", to: "cities#show", as: "city"
  patch "/cities/:id", to: "cities#update", as: "update_cities"
  # review routes
  get "/users/:user_id/reviews", to: "reviews#index", as: "reviews"
  get "/users/:user_id/reviews/new", to: "reviews#new", as: "new_review"
  get "/users/:user_id/cities", to: "reviews#index", as: "user_cities"
  get "/users/:user_id/reviews", to: "reviews#show", as: "review"
  post "/cities/:city_id/users", to: "reviews#create", as: "user_reviews"
  get "/users/:user_id/reviews/:id/edit", to: "reviews#edit", as: "edit_reviews"
  patch "/users/:user_id/reviews/:id", to: "reviews#update", as: "update_reviews"
  delete "/users/:user_id/reviews/:id", to: "reviews#destroy", as: "destroy_reviews"
end
