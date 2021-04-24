Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants
  get '/restaurants/new', to: 'restaurnants#new'
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants', to: 'restaurants#index'
  get "restaurants/:id", to: "restaurants#show"
    resources :restaurants do
      resources :reviews, only: [ :new, :create]
    end
end
