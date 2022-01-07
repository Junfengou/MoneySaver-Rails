class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.integer :checkone
      t.integer :checktwo
      t.integer :checkthree
      t.integer :checkfour
      t.integer :checkfive

      t.timestamps
    end
  end
end
