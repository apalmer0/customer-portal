class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :company
  has_many :orders, through: :company

  validates :email, presence: true
  validates :email, uniqueness: true

  def company_name
    company.name
  end

  def full_name
    "#{first_name} #{last_name}".titleize
  end
end
