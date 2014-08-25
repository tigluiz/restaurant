Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pedido/:id', to: 'order#show', as: 'order'
  post 'pedido/:cart_id', to: "order#create", as: "orders_create"
  root 'home#index'
end
