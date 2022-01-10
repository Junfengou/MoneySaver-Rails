class AddExpenseIdToBudget < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :expense_id, :integer
    add_index :budgets, :expense_id
  end
end
