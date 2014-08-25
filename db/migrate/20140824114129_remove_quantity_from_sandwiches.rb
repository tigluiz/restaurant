class RemoveQuantityFromSandwiches < ActiveRecord::Migration
  def change
    remove_column :sandwiches, :quantity, :string
  end
end
