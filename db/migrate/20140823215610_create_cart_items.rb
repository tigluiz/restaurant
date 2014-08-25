class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.references :cart, index: true
      t.string :genre

      t.timestamps
    end
  end
end
