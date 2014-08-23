class CreateOrdersSandwiches < ActiveRecord::Migration
  def change
    create_table :orders_sandwiches do |t|
      t.references :order, index: true
      t.references :sandwich, index: true
    end
  end
end
