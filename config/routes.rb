Rails.application.routes.draw do
  resources :articles
  resources :users, only: [:create]
  get '/register', to: 'users#register'
  resources :sessions, only: [:create]
  root "articles#index"
end
