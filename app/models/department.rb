class Department < ApplicationRecord
  has_many :employee, dependent: :destroy
end
