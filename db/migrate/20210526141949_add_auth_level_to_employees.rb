class AddAuthLevelToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :auth_level, :integer
  end
end
