class Employee < ApplicationRecord
  has_rich_text :notes

  belongs_to :department
  has_many :membership, dependent: :destroy
  has_many :projects, through: :membership

  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :email, presence: true, format: { with: Devise.email_regexp }
end
