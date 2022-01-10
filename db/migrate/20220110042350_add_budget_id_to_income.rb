class AddBudgetIdToIncome < ActiveRecord::Migration[5.2]
  def change
    add_column :incomes, :budget_id, :integer
    add_index :incomes, :budget_id
  end
end
