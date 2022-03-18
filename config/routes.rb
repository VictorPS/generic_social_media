Rails.application.routes.draw do
  devise_for :users

  resource :feed, only: :show
  resources :posts

  # Defines the root path route ("/")
  root "feeds#show"
end
