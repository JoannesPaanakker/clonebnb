Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [:show, :new, :create, :edit, :update]
  end
  devise_for :users, controllers: { sessions: "sessions" }
end
