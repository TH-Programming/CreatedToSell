Rails.application.routes.draw do
  get "/", to: "merchandises#index"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/auth/facebook/callback", to: 'sessions#book_login'
  post "/merchandises/search", to: 'merchandises#search', as: 'search'
  resources :sales
  resources :merchandise_reviews, only: [:new, :create, :edit, :update]
  resources :merchandises do
    resources :sales, only: [:new, :create]
  end
  resources :users do
    resources :sales, :merchandises, only: [:index, :show]
  end
  resources :creators do
    resources :sales, :merchandises, only: [:index, :show, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
