# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'foods#index'

  resources :foods
  resources :meals do
    resource :foods, only: :edit, controller: 'meals/foods'
  end
end
