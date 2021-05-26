class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :employee_id
      t.integer :carmodel_id

      t.timestamps
    end
  end
end
