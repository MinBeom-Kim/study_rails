Rails.application.routes.draw do
  resources :studies
  resources :user_has_studies
  resources :categories do
    resources :studies
  end

  resources :sessions, only: [:update]

  get 'home/index'
  get 'home/show'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'users/index'

  post '/:user_id/:user_has_study_id/user_has_studies' => 'user_has_studies#uhs_create', as: 'create_uhs'


  root 'home#index'
end
