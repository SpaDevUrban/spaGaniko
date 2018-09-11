Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :therapies
  resources :administrators
  resources :therapists
  resources :clients
  get 'pages/index'

  resources :facilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
