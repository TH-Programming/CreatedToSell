Rails.application.routes.draw do
  resources :merchandise_categories, only: [:index, :show]
  resources :merchandise_reviews, only: [:new, :create, :edit, :update]
  resources :sales
  resources :merchandises
  resources :users do
     resources :sales, :merchandises, only: [:index, :show]
    # resources :merchandises, only: [:index, :show]
  end
  resources :creators do
    # resources :sales,
    resources :merchandises
  end
  get :root, to: "merchandises#index"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
