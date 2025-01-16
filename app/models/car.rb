class Car < ApplicationRecord
  belongs_to :owner

  has_many :favorites, dependent: :destroy
  has_many :reviews

  validates :brand, :model, :fuel, presence: true
  validates :year, presence: true, numericality: {only_integer: true}
end
