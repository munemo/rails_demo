Rails.application.routes.draw do
  get 'articles/index'
   resources :articles, only: [:index, :show, :create, :new, :update]
  root controller: :articles, action: :index
  end
