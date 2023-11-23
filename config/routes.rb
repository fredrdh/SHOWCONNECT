Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :appointments, only: [:new, :create]
  end

  root to: "pages#home"  # Defines the root path route ("/")

  resources :appointments, only: [:index, :show, :destroy]
end
