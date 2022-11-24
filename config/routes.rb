# frozen_string_literal: true

Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
  end

  resources :stores do
    resources :store_mdrs
    resources :store_terminals
  end

  resources :devices
  resources :terminals
  resources :banks do
    resources :bank_mdrs
  end
end
