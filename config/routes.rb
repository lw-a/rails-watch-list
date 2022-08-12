Rails.application.routes.draw do
  root to: 'lists#index'
  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
end
