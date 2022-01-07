class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :mortgage
      t.integer :water
      t.integer :gas
      t.integer :eletricity
      t.integer :cable
      t.integer :trash
      t.integer :gasoline
      t.integer :maintenance
      t.integer :groceries
      t.integer :restaurant
      t.integer :clothing
      t.integer :phone
      t.integer :fun
      t.integer :cosmetic
      t.integer :subscription

      t.timestamps
    end
  end
end
