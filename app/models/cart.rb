class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :sandwiches
  accepts_nested_attributes_for :cart_items, reject_if: proc { |attributes| attributes['genre'].blank? }

  def total
    cart_items.inject(0) {|sum, item| sum + (item.price * item.quantity)}
  end
end
