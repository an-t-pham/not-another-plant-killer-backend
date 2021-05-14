Rails.application.routes.draw do
  
  get '/private' => 'private#private'
  namespace :api do
    namespace :v1 do
      resources :plants, only: [:index, :create, :show, :update, :destroy]
      resources :waters, only: [:index]
      resources :lights, only: [:index]
      resources :users, only: [:index, :create] do
        get '/plants' => 'plants#user_plants'
        resources :plants, only: [:create]
        resources :collections, only: [:index, :create, :show, :update, :destroy] do
          get '/plants' => 'collections#plants'
        end
      end
        
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
