class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # has_one_attached :photo

  validates :name, presence: true
  validates :artist, presence: true
  validates :category, presence: true
  # validates :location, presence: true

end
