Rails.application.routes.draw do
  root to: "pages#home"

  namespace :admin do
    resources :items, only: %i[new create edit update destroy]
  end

  resources :items, only: %i[index show]

  resources :carts, except: %i[index new edit] do
    resources :cart_items, only: %i[index create update destroy]
  end

end
