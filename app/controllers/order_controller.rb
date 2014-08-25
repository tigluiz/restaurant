class OrderController < ApplicationController
  def create
    @cart = Cart.find(params[:cart_id])
    @order = OrderManager.new(@cart).perform
    redirect_to @order
  end

  def show
    @order = Order.find(params[:id])
  end
end
