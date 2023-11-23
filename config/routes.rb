Rails.application.routes.draw do
  devise_for :users

  resources :events
  root to: "pages#home"  # Defines the root path route ("/")
  resources :appointments, only: [:index, :show, :new, :create, :destroy]
  end