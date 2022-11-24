class Artwork < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :artist, presence: true
  validates :category, presence: true
  validates :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_artist_category,
    against: [ :name, :artist, :category ],
    using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  # validates :location, presence: true
end
