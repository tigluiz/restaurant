Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pedido', to: 'order#new', as: 'orders'
  post 'pedido', to: "order#create", as: "orders_create"
  root 'home#index'
end
