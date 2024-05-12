class Project < ApplicationRecord
  has_many :project_assignments, dependent: :destroy

  validates :title, presence: true, length: {minimum: 3}
end
