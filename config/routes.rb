Rails.application.routes.draw do
  root "reviews#index"

  resources :reviews

  # Defines the root path route ("/")
  # root "articles#index"
end
