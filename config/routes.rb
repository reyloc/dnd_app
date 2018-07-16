# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :languages
  post 'update_picture/update'
  get 'home/index'
  root 'home#index'
end
