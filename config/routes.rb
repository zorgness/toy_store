Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index] do
    resources :toys, only: [:index, :show, :new, :edit] do
      resources :offers, only: [:new]
    end
  end
  resources :toys, only: [:index, :show, :new, :edit] do
    resources :offers, only: [:new]
  end
  resources :toys, only: [:destroy]
  resources :offers, only: [:destroy]
end
