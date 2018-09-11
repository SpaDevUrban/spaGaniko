Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :therapies
  resources :therapists
  resources :clients
  get 'pages/home'

  resources :facilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  

end
