class Employee < ApplicationRecord
  belongs_to :department
  has_many :membership, dependent: :destroy
  has_many :projects, through: :membership
end
