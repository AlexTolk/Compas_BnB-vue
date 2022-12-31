Rails.application.routes.draw do
  devise_for :users


  root to: 'flats#index'
  get 'pages/profile'

  resources :flats do
    resources :bookings, only: [:new]
  end

  resources :bookings, only: [:destroy, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
