class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.integer :quantity, default: 1
      t.string :name

      t.timestamps
    end
  end
end
