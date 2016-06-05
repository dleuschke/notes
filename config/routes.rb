Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'notes' => 'notes#index'

      devise_for :users
      resources :users
      post 'auth_user' => 'authentication#authenticate_user'
    end
  end
end
