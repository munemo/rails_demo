Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
   resources :articles, only: [:index, :show, :create, :new, :update]
  root controller: :articles, action: :index
  root to: 'home#index'
  end
