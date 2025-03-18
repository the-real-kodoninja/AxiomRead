# config/routes.rb

Rails.application.routes.draw do
    devise_for :users
    root to: 'home#index'
  
    resources :users, only: [:show, :edit, :update]
    resources :settings, only: [:index, :update]
  end