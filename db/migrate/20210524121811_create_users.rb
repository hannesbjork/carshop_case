class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :employee_id
      t.integer :sold_for

      t.timestamps
    end
  end
end
