Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"
  resources: events do
    # resources: appointments, only: [:create]
  end

  resources: appointments, only: [:destroy]
  resources: users, only: [:show]
  resources: payments, only: [:new, :create]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'categorias', to: 'pages#categorias'
  get 'pagamentos', to: 'pages#pagamentos'
  # Defines the root path route ("/")
  # root "posts#index"
end
