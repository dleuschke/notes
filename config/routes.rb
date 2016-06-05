Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :notes
      post '/notes/:id/drop', to: 'notes#drop', as: :drop
      post '/notes/:id/pickup', to: 'notes#pickup', as: :pickup
      get '/search', to: 'notes#search', as: :search


      devise_for :users
      resources :users
      post 'auth' => 'authentication#authenticate_user'
    end
  end
end
