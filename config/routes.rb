Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :studies do
    collection do
      get :search
    end
  end
  resources :user_has_studies
  resources :categories do
    resources :studies
  end


  devise_scope :user do 
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  resources :sessions, only: [:update]

  get 'home/index'
  get 'home/show'
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  get 'users/index'

  post '/:user_id/:study_id/user_has_studies' => 'user_has_studies#uhs_create', as: 'create_uhs'

  post '/:user_id/:study_id/user_has_studies' => 'user_has_studies#uhs_study_create', as: 'create_study_uhs'

  post '/categories/:category_id/create_studies' => 'studies#create', as: 'create_study'

  get '/user_has_studies/:user_id/enrolled_studies' => 'user_has_studies#enrolled_studies', as: 'enrolled_studies'

  get 'studies/search' => 'studies#search'

  root 'home#index'
end
