Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  get 'profiles', to: 'profiles#show', as: :profile
  patch 'offers/:id/refuse', to: 'offers#refused', as: :refuse
  patch 'offers/:id/confirm', to: 'offers#validation', as: :validation
  patch 'offers/:id/pending', to: 'offers#pending', as: :pending
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index] do
    resources :toys, only: [:index]
  end
  resources :toys, only: [:show, :new, :create, :edit] do
    resources :offers, only: [:new, :create]
  end
  resources :toys, only: [:destroy]
  resources :offers, only: [:show, :destroy]
end
