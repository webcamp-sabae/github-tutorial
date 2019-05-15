Rails.application.routes.draw do
  root "cds#index"
  get '/thanks', to: 'thanks#thanks'

  devise_for :users
  
  resources :cds, only: [:index, :show]
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :carts, only: [:index, :create, :update, :destroy]
  resources :recipts, only: [:new, :create]
  resources :othersaddresses, only: [:new, :create, :update]
  resources :purchases, only: [:index]
end
