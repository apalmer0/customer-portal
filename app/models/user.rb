class User < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_many :orders

  validates :email, presence: true
  validates :email, uniqueness: true
end
