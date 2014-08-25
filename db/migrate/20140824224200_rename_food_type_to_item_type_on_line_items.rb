class RenameFoodTypeToItemTypeOnLineItems < ActiveRecord::Migration
  def change
    rename_column :line_items, :food_type, :item_type
  end
end
