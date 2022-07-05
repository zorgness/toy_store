Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index] do
    resources :toys, only: [:index, :show, :new, :edit]
  end
  resources :toys, only: [:index, :show, :new, :create, :edit] do
    resources :offers, only: [:new, :create]
  end
  resources :toys, only: [:destroy]
  resources :offers, only: [:show, :destroy]
end
