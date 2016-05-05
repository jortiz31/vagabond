Rails.application.routes.draw do
  root "/", to: "home/index", as: "root"
  get '/reviews', to: 'reviews#index', as: "reviews"

  get '/reviews/new', to: "reviews#new", as: "new_review"

  post '/reviews', to: "reviews#create", as: "create_review"

  get '/reviews/:id', to: "reviews#show", as: "show_review"

  get '/reviews/:id/edit', to: "reviews#edit", as: "edit_review"

  patch '/reviews/:id', to: "reviews#update", as: "update_review"

  delete '/reviews/:id', to: "reviews#destroy", as: "destroy_review"

end
