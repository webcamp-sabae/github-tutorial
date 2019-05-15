Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :cds, only: [:index, :show, :create]
resources :users, only: [:show, :edit, :update, :destroy]
resources :carts, only: [:index, :create, :update, :destroy]
resources :recipts, only: [:new, :create, :update, :destory]
resources :othersadress, only: [:new, :create]
resources :thanks, only: [:thanks]
resources :purchases, only: [:index]


end
