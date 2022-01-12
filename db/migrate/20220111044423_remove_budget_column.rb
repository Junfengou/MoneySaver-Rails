class RemoveBudgetColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :budgets, :debt_id
    remove_column :budgets, :expense_id
    remove_column :budgets, :giving_id
    remove_column :budgets, :income_id
  end
end
