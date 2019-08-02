class Customer < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :rentals
  has_many :movies, through: :rentals
end
