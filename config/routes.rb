Rails.application.routes.draw do
  resources :articles
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get '/register', to: 'users#register'
  get '/login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'profile', to: 'users#show', as: 'profile'
  get "articles/:id" => "articles#edit"
  patch "articles/:id" => "articles#update"
  root "articles#index"
  
end
