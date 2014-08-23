Rails.application.routes.draw do
  get 'order/new', as: 'orders'
  root 'home#index'
end
