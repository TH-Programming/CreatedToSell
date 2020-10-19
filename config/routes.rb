Rails.application.routes.draw do
  resources :merchandise_categories
  resources :merchandise_reviews
  resources :sales
  resources :merchandises
  resources :users do
    # resources :sales,
    resources :merchandises
  end
  resources :creators do
    # resources :sales,
    resources :merchandises
  end
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
