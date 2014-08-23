Rails.application.routes.draw do
  get 'order/new', as: 'orders'
  resources :order, only: [:create, :new]
  root 'home#index'
end
