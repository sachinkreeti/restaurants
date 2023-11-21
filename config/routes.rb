Rails.application.routes.draw do
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
  resources :reviews
  resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
