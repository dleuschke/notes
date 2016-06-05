Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes
      devise_for :users
      resources :users
      post 'auth' => 'authentication#authenticate_user'
    end
  end
end
