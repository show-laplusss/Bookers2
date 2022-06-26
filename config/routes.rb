Rails.application.routes.draw do
  devise_for :users
  
  resources :users, only: [:show, :edit, :update, :index]
  resources :books, only: [:new, :index, :show, :create, :destroy]

  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" =>"homes#about"
end
