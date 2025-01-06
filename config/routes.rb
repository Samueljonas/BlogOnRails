# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations", passwords: "devise/passwords" }
  resources :posts
  resources :users, only: %i[index show edit update destroy]
  root "posts#index"
  resources :posts do
    resources :comments, only: [:create]
  end
  get "up" => "rails/health#show", as: :rails_health_check
end
