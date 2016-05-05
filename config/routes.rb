Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/show'

  get 'reviews/update'

  get 'reviews/destroy'

  root to: "home#index"

  get "/home", to: "home#index", as: "home"
end
