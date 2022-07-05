class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :toy
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
