class Employee < ApplicationRecord
	belongs_to :user
	has_many :sales, dependent: :destroy
	has_many :carmodels, through: :sales
end
