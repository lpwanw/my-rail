# frozen_string_literal: true

Rails.application.routes.draw do
  root "portfolio#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :app, only: :index do
    collection do
      get :about
    end
  end

  resources :posts, only: %i[index]

  namespace :examples do
    resources :infinity_scroll, only: %i[index]
    resources :sortable, only: %i[index]
    resources :rooms, only: %i[index]
    resources :messages, only: %i[create]

    resources :tasks, only: %i[show edit update]
  end

  devise_for :admins, controllers: {
    sessions: "admins/sessions"
  }
  resources :admins, only: %i[index]

  namespace :admins do
    resources :posts
  end
end
