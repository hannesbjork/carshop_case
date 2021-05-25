class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.string :employee_id
      t.string :carmodel_id

      t.timestamps
    end
  end
end