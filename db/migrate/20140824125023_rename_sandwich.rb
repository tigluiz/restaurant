class RenameSandwich < ActiveRecord::Migration
  def change
    rename_table :sandwiches, :items
  end
end
