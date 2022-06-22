Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update]
  resources :books, only: [:new, :index, :show, :create, :destroy]
  devise_for :users
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" =>"homes#about"
end
