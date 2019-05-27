class Item < ApplicationRecord
  validates :name, presence: true
  validates :cetegory, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :address, presence: true
  belongs_to :user
end
