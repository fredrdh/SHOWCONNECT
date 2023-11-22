Rails.application.routes.draw do
  devise_for :users

  root to: "posts#index"  # Defines the root path route ("/")
  resources :events

#   get "up" => "rails/health#show", as: :rails_health_check
#   get 'categorias', to: 'pages#categorias'
#   get 'pagamentos', to: 'pages#pagamentos'
end
