Rails.application.routes.draw do
  root to: "pages#home"

  resources :items

  resources :carts, except: [:new, :edit] do
    resources :cart_items, only: [:index, :create, :update, :destroy]
  end

end
