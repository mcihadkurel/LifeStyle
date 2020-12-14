Rails.application.routes.draw do
  resources :articles
  resources :users
  get '/register', to: 'users#register'
  get '/login', to: 'sessions#new', as: 'login'
  resources :sessions
  root "articles#index"
  
end
