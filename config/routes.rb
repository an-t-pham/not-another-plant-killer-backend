Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :plants, only: [:index, :show]
      resources :users, only: [:index_plant, :create, :show, :destroy] do
        resources :collections, only: [:index, :index_plant, :create, :show, :destroy] 
      end
        
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
