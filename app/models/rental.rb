class Rental < ApplicationRecord
  validates :rental_length, presence: true

  belongs_to :customer
  belongs_to :movie
end
