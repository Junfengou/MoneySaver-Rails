class AddBudgetIdToDebt < ActiveRecord::Migration[5.2]
  def change
    add_column :debts, :budget_id, :integer
    add_index :debts, :budget_id
  end
end
