Rails.application.routes.draw do
  resources :meal_ingredients
  resources :ingredients
  resources :meals
  resources :users, only: [:show, :new, :create, :destroy]

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#delete', as: 'logout'
end
