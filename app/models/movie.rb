class Movie < ApplicationRecord
  validates :title, presence: true
  validates :overview, presence: true

  has_many :rentals
  has_many :customers, through: :rentals
end
