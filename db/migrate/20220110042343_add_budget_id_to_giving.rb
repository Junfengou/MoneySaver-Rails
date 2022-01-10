class AddBudgetIdToGiving < ActiveRecord::Migration[5.2]
  def change
    add_column :givings, :budget_id, :integer
    add_index :givings, :budget_id
  end
end
