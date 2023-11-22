Rails.application.routes.draw do
  get 'admin_sessions/new'
  get 'admin_sessions/create'
  get 'admin_sessions/destroy'
  root to: "pages#home"

  resources :admin_sessions, only: %i[new create]
  delete '/logout', to: 'admin_sessions#destroy', as: 'logout_admin'

  namespace :admin do
    resources :items, only: %i[new create edit update destroy]
  end

  resources :items, only: %i[index show]

  resources :carts, except: %i[index new edit] do
    resources :cart_items, only: %i[index create update destroy]
  end

end
