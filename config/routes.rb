Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'cds#index'
resources :users, [:show, :edit, :update, :destroy],
          :cds, only[:index, :show,],
          :carts, only[:index, :create, :update, :destroy],
          :purchases, only[:index],
          :receipus, only[:new, :create],
          :othesaddress, only[:new, :update],
          :thanks, only[:thanks]
end
