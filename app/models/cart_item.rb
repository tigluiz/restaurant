class CartItem < ActiveRecord::Base
  belongs_to :cart
  has_one :item
end
