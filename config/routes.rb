Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"  # Defines the root path route ("/")

  resources :appointments, only: %i[create destroy]
  resources :users, only: [:show]
  resources :payments, only: %i[new create]

  get "up" => "rails/health#show", as: :rails_health_check
  get 'categorias', to: 'pages#categorias'
  get 'pagamentos', to: 'pages#pagamentos'
end
