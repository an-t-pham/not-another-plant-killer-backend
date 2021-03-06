Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :plants, only: [:index, :create, :show, :update, :destroy]
      resources :waters, only: [:index]
      resources :lights, only: [:index]
      resources :users, only: [:index, :create] do
        resources :plants, only: [:create]
        resources :collections, only: [:index, :create, :show, :update, :destroy] do
          post '/plants' => 'collections#collection_plants'
          patch '/plants' => 'collections#remove_plant'
        end
      end
        
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
