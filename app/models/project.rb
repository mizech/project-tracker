class Project < ApplicationRecord
  has_many :membership, dependent: :destroy
  has_many :employees, through: :membership

  validates :title, presence: true, length: {minimum: 3, maximum: 60}
end
