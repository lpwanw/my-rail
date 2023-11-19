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

    resources :tasks, only: %i[show edit update]
  end
end
