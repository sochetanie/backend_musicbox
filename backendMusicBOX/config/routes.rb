Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/playlists', to: 'playlists#index'
      post '/playlists', to: 'playlists#create'
      post '/login', to: 'auth#create'
      get '/me', to: 'auth#show'
      post '/signup', to: 'users#create'
      get '/user_playlists', to: 'users#user_playlists'
    end
  end

end
