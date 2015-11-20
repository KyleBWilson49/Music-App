Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :bands, only: [:index, :create, :new, :edit, :show, :update, :destroy] do
    resources :albums, only: [:new]
  end
  resources :albums, only: [:create, :edit, :show, :update, :destroy] do
    resources :tracks, only: [:new]
  end
  resources :tracks, only: [:create, :edit, :update, :destroy, :show] do
    resources :notes, only: [:create, :destroy]
  end

  root to: redirect("/bands")
end
