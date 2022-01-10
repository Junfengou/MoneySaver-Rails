class AddDebtIdToBudget < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :debt_id, :integer
    add_index :budgets, :debt_id
  end
end
