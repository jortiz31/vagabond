Rails.application.routes.draw do

  root   to: "home#index"
  # user routes
  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "users/:id", to: "users#show", as: "user"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"
  # get     "/reviews",                   to: "reviews#index",      as: "reviews"
  # get     "/reviews/new",               to: "reviews#new",        as: "new_review"
  # post    "/reviews",                   to: "reviews#create",     as: "create_review"
  # get     "/reviews/:id",               to: "reviews#show",       as: "show_review"
  # get     "/reviews/:id/edit",          to: "reviews#edit",       as: "edit_review"
  # patch   "/reviews/:id",               to: "reviews#update",     as: "update_review"
  # delete  "/reviews/:id",               to: "reviews#destroy",    as: "destroy_review"
  # get     "/cities",                    to: "cities#show",        as: "all_cities"
  # get     "/cities/:id",                to: "cities#index",       as: "show_city"
  # get     "/cities/new",                to: "cities#new",         as: "new_city"
  # post    "/cities",                    to: "cities#create",      as: "post_city"

end
