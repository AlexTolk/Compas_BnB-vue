Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'pages/home'
  get 'flats/show'
  get 'bookings/new'
=======
=======

  root to: 'flats#index'
  # get 'pages/home'
  get 'pages/profile'
  # get 'flats/show'
  # get 'bookings/show'

  resources :flats
  resources :bookings


=======

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
