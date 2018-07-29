# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :backgrounds, only: %w[index show]
  resources :languages, only: %w[index show]
  resources :races, only: %w[index show]
  post 'update_picture/update'
  get 'home/index'
  root 'home#index'
end
