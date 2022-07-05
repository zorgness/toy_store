class Toy < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :offers, dependent: :destroy
  has_many_attached :photos
  validates :name, presence: true
  validates :price, presence: true
end
