class Item < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :address, presence: true
  belongs_to :user
  has_many :rentals
end
