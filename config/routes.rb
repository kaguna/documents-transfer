Rails.application.routes.draw do
  root 'users#new'
  resources :documents
  resources :users
  get 'login', to: 'sessions#new'
  get 'login_user', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
