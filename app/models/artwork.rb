class Artwork < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :artist, presence: true
  validates :category, presence: true
  validates :price, presence: true
  # validates :location, presence: true
end
