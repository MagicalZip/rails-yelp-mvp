class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5]}, numericality: { greater_than_or_equal: 0, less_than_or_equal_to: 5, only_integer: true }
end
