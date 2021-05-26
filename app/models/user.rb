class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
  
  has_one :employee, dependent: :destroy
  has_many :sales, through: :employee
  has_many :carmodels, through: :sales
end
