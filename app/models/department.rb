class Department < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates :name, length: { minimum: 3, maximum: 50 }
end
