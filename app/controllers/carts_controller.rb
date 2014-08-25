class CartsController < ApplicationController
  def new
    @items = Item
    @cart = Cart.new
  end

  def show
    set_cart
  end

  def create
    @cart = Cart.new(cart_params)
    respond_to do |format|
      if CartManager.new(@cart).perform
        format.html { redirect_to @cart }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart, status: :unprocessable_entity }
      end
    end
  end

  private
  def set_cart
    @cart = Cart.find(params[:id])
  end
  def cart_params
    params.require(:cart).permit(:table,cart_items_attributes: [:genre, :quantity])
  end
end
