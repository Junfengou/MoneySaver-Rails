class AddBudgetIdToExpense < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :budget_id, :integer
    add_index :expenses, :budget_id
  end
end
