Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :artworks, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :index]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
  # resources :users do
  #   resources :bookings, only: [:index]
  #   resources :artworks, only: [:new, :create, :edit, :update, :destroy]
  # end
end
