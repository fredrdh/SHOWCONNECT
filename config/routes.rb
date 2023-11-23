Rails.application.routes.draw do
  devise_for :users

  resources :events
  root to: "pages#home"  # Defines the root path route ("/")
  resources :appointments, only: [:index, :show, :new, :create, :destroy]

#   get "up" => "rails/health#show", as: :rails_health_check
#   get 'categorias', to: 'pages#categorias'
#   get 'pagamentos', to: 'pages#pagamentos'
end
