class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :category, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :address, presence: true
  belongs_to :user
  has_many :rentals
  include PgSearch
  pg_search_scope :search_by_name,
    against: [:brand, :category, :name, :address],
    using: {
      tsearch: { prefix: true }
    }

  CATEGORIES = ["Watches", "Bags"]
  BRANDS = ["Rolex"]
end
