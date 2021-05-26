class CreateCarmodels < ActiveRecord::Migration[6.1]
  def change
    create_table :carmodels do |t|
      t.string :brand
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end
