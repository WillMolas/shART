class Artwork < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  # has_one_attached :photo

  validates :name, presence: true
  validates :artist, presence: true
  validates :category, presence: true
  # validates :location, presence: true
  # validates :price, presence: true
end
