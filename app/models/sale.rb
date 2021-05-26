class Sale < ApplicationRecord
	belongs_to :employee
	belongs_to :carmodel
end
