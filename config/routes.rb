Rails.application.routes.draw do
  # Rotas para autenticação de usuários
  devise_for :users
  resources :posts

  # Rotas para gerenciamento de usuários
  resources :users, only: [:index, :show, :edit, :update, :destroy]

  # Página inicial (root)
  root"posts#index"

  # Rotas para posts com comentários aninhados
  resources :posts do
    resources :comments, only: [:create]
  end

  # Health check (opcional)
  get "up" => "rails/health#show", as: :rails_health_check
end
