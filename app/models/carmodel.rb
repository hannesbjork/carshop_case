class Carmodel < ApplicationRecord
	has_many :sales, dependent: :destroy
end
