Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { sessions: "sessions" }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [:show, :new, :create]
    member do
      get 'cost', to: 'bookings#cost', as: :bookingcost
    end
  end
  resources :bookings, only: [:edit, :update]
  resources :users, only: [:show, :update]
end
