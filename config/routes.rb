Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :artworks do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
  resources :users, only: [:show] do
    resources :bookings, only: [:index]
  end
end
