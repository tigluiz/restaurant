class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :food_type
      t.integer :quantity
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.references :order, index: true

      t.timestamps
    end
  end
end
