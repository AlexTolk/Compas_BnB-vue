Rails.application.routes.draw do
  devise_for :users


  root to: 'flats#index'
  get 'pages/profile'
  # authenticate(:user) do
    resources :flats do
      resources :bookings, only: [:new, :create]
    end

    resources :bookings, only: [:destroy, :show]
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
