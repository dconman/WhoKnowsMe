# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :user do
    member do
      get "login"
      post "login"
      post "logout"
    end
  end

  resources :merchants
  resources :data_values
end
