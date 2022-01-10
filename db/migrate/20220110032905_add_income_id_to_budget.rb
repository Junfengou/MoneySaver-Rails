class AddIncomeIdToBudget < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :income_id, :integer
    add_index :budgets, :income_id
  end
end
