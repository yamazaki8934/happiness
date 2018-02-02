Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users do
    collection do
      resources :receives
    end
  end
  resources :messages do
    resources :likes, only: [:create, :destroy]
  end
  resources :users do
    resources :messages
    resources :sents
  end
  resources :follows
  resources :profiles, only: [:edit, :update]
end
