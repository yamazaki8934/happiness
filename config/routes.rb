Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :users
  resources :messages
  resources :users do
    resources :messages
  end
end
