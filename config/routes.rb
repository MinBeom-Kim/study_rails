Rails.application.routes.draw do
  get 'manager/index'
  get 'manager/show'
  get 'manager/new'
  get 'manager/edit'
  get 'manager/create'
  get 'manager/update'
  get 'manager/destroy'
  resources :study_has_managers
  resources :user_has_studies
  resources :studies

  devise_for :users, path: 'users', controller: "users/sessions"
  devise_for :managers, path: 'managers', controller: "managers/sessions"

  get 'home/index'
  get 'home/show'
  get 'home/index'
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'users/index'

  root 'home#index'
end
