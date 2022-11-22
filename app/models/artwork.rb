class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings
end

# validates :name, presence: true
# validates :artist, presence: true
# validates :category, presence: true
# validates :location, presence: true
# validates :price, presence: true
