Rails.application.routes.draw do
  devise_for :users

  # :index, :create, :new, :edit, :show, :update, :destroy

  root 'cds#index'

  get '/thanks', to: 'thanks#thanks'

  # create
  resources :carts, only: [:index, :update, :destroy]

  resources :cds, only: [:index, :show]

  # create
  resources :othersaddresses, only: [:update, :new]

  # create
  resources :purchases, only: [:index]
  resources :receipts, only: [:new, :create]
  resources :users, only: [:show, :update, :destroy, :edit]
  
end
