class Order < ActiveRecord::Base
  CONSTANT_NUMBER = 1782
  CONSTANT_FACTOR = 17
  after_create :initialize_order

  has_many :line_items

  def initialize_order
    update_attributes(:number => (id * CONSTANT_FACTOR) + CONSTANT_NUMBER)
  end
end
