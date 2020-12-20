Rails.application.routes.draw do
  resources :articles
  resources :users
  get '/register', to: 'users#register'
  get '/login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile', to: 'users#show', as: 'profile'
  get "articles/:id" => "articles#edit"
  resources :sessions, only: [:new, :create, :destroy]
  root "articles#index"
  
end
