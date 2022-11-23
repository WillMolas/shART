class Review < ApplicationRecord
  belongs_to :artwork
  belongs_to :user

  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
