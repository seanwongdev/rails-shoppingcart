Rails.application.routes.draw do
  root to: "pages#home"

  resources :items

  resources :carts, except: %i[index new edit] do
    resources :cart_items, only: %i[index create update destroy]
  end

end
