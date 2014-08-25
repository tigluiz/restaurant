class LineItem < ActiveRecord::Base
  belongs_to :order
  validates :price, :name, :quantity, :item_type, presence: true
end
