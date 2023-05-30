Rails.application.routes.draw do
  devise_for :users
  root to: "islands#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/mybookings', to: 'bookings#mybookings'

  resources :islands do
    resources :bookings
  end

end
