Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/signup", to: "users#create"
      post "/login", to: "sessions#create"

      resources :categories
      resources :habits do
        resources :completions, only: [ :create, :destroy ]
      end
    end
  end
end
