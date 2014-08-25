class RemoveOrdersSandwiches < ActiveRecord::Migration
  def change
    drop_table :orders_sandwiches
  end
end
