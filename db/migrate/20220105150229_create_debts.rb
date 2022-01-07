class CreateDebts < ActiveRecord::Migration[5.2]
  def change
    create_table :debts do |t|
      t.integer :creditcard
      t.integer :car
      t.integer :studentloan
      t.integer :medical
      t.integer :personal

      t.timestamps
    end
  end
end
