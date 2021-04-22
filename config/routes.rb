Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :collections, only: [:create, :show, :destroy]
      resources :plants, only: [:index, :show]
      resources :users, only: [:create, :show, :destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
