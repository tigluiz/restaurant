class Order < ActiveRecord::Base
  CONSTANT_NUMBER = 1782
  CONSTANT_FACTOR = 17
  after_create :initialize_order
  validates :table, presence: true

  has_many :line_items
  has_and_belongs_to_many :sandwiches

  def initialize_order
    update_attributes(:number => (id * CONSTANT_FACTOR) + CONSTANT_NUMBER)
  end
end
