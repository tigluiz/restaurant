class AddPriceToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :price, :decimal, precision: 8, scale: 2
  end
end
