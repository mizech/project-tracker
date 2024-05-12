class Employee < ApplicationRecord
  belongs_to :department
  has_many :project_assignments, dependent: :destroy
end
