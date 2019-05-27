Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  config.omniauth :kakao, ENV["Kakao_Key"], :redirect_path => "/users/auth/kakao/callback"

end
