class OrderManager

  def initialize(cart)
    @cart = cart
  end

  def perform
    return false if invalid_params
    create_order_line_items(create_order)
  end

  private

  def create_order_line_items order
    @cart.cart_items.each do |item|
      order.line_items.create(quantity: item.quantity, price: item.price, name: item.name, item_type: item.item_type)
    end
    order
  end

  def create_order
    Order.create(table: @cart.table, state: "created")
  end

  def invalid_params
    @cart.cart_items.blank?
  end
end
