Rails.application.routes.draw do
  get "comments/create"
  get "comments/destroy"
  get "posts/index"
  get "posts/show"
  get "posts/new"
  get "posts/create"
  get "posts/edit"
  get "posts/update"
  get "posts/destroy"
  get "users/index"
  get "users/show"
  get "users/edit"
  get "users/update"
  get "users/destroy"
  devise_for :users

  # Routes for CRUD users
  resources :users, only: [:index, :show, :edit, :update, :destroy]

  # home page users
 # root to: 'users#index'
 #  root "pages#home"

  #incluir rotas aninhadas de comentários em posts
  root to: "posts#index"
  
  resources :posts do
    resources :comments, only: %i[create destroy]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
