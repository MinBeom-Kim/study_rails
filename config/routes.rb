Rails.application.routes.draw do
  resources :user_has_studies
  resources :studies
  resources :categories
  resources :managers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
