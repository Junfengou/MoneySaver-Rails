class CreateGivings < ActiveRecord::Migration[5.2]
  def change
    create_table :givings do |t|
      t.integer :church
      t.integer :charity

      t.timestamps
    end
  end
end
