class LineItem < ActiveRecord::Base
  belongs_to :order
  validates :price, :name, :quantity, :food_type, presence: true
end
