Rails.application.routes.draw do
  resources :merchandise_categories
  resources :merchandise_reviews
  resources :sales
  resources :merchandises
  resources :users
  resources :creators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
