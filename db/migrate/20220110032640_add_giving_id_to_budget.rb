class AddGivingIdToBudget < ActiveRecord::Migration[5.2]
  def change
    add_column :budgets, :giving_id, :integer
    add_index :budgets, :giving_id
  end
end
