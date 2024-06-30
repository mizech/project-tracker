class Department < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
end
