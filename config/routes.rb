require 'sidekiq/web'

Rails.application.routes.draw do
  if Rails.env.development?
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :reservation_guests
  resources :promotions
  resources :events
  resources :payments
  resources :orders
  resources :suppliers
  resources :ingredients
  resources :employees
  resources :reservations
  resources :menus
  resources :restaurants do
    resources :reviews
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "restaurants#index"
end
