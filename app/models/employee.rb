class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  has_many :membership, dependent: :destroy
  has_many :projects, through: :membership

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
end
