class Item < ActiveRecord::Base
  validates :name, :price, :item_type, presence: true
  scope :foods, -> {where(item_type: "food")}
  scope :drinks, -> {where(item_type: "drink")}
end
