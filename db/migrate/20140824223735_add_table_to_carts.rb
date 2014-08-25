class AddTableToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :table, :string
  end
end
