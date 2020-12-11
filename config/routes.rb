Rails.application.routes.draw do
  resources :articles
  resources :users, only: [:create]
  get '/register', to: 'users#register'
  get '/login', to: 'sessions#new'
  resources :sessions, only: [:create]  
  root "articles#index"
  
end
