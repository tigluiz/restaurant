class CartManager
  def initialize cart
    @cart = cart
  end

  def perform
    return false if invalid_cart
    @cart.cart_items.each do |cart_item|
      item = Item.find_by_id cart_item.genre
      if item
        cart_item.price = item.price
        cart_item.name = item.name
        cart_item.item_type = item.item_type
      end
    end
    @cart.save
  end

  private 
  def invalid_cart
    !@cart.respond_to?(:cart_items) || @cart.cart_items.blank?
  end
end
