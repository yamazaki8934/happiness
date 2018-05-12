Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :toppage, only: [:index]
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
  root 'toppage#index'
end
