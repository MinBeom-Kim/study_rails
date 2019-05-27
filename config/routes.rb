Rails.application.routes.draw do
  get 'home/index'
  get 'home/show'
  get 'home/index'
  resources :study_has_managers
  resources :category_has_studies
  resources :user_has_studies
  resources :studies
  resources :categories
  resources :managers
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'

  root 'home#index'
end
