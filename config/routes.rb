Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :admins
  get 'pedido', to: 'order#new', as: 'orders'
  resources :order, only: [:create, :new]
  root 'home#index'
end
