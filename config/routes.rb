Rails.application.routes.draw do
  devise_for :users

  resource :feed, only: :show

  # Defines the root path route ("/")
  # root "articles#index"
end
