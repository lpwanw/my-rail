# frozen_string_literal: true

Rails.application.routes.draw do
  root "app#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :app, only: :index do
    collection do
      get :about
    end
  end
end
