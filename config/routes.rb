Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :articles
  resources :users
  resources :sessions, only: [:create]
  root "articles#index"
end
