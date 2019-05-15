Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  root => "cds#index"

  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :cds, only: [:show, :index]
  resources :carts, only: [:show, :index, :update, :destroy]
  resources :thanks, only: [:thank]
  resources :purchase, only: [:index]
  resources :receipt, only: [:new, :create]
  resources :othersaddress, only: [:new, :update]
end
