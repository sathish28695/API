class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
  validates :make, presence: true, length: { is: 4 }
end
