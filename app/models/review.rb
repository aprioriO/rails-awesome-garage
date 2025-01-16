class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true
  validates :rating, presence: true, numericality: {only_integer: true, greater_then_or_equal_to: 1, less_then_or_equal_to: 5}
end
