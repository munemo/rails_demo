Rails.application.routes.draw do
  get 'articles/index'
   resources :articles, only: [:index, :show]
  root controller: :articles, action: :index
  end
