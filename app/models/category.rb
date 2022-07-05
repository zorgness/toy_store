class Category < ApplicationRecord
  has_many :toys
  validates :name, presence: true, uniqueness: true
end
