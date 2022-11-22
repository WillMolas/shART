class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artwork
end

# validates :borrow_date, presence: true
# validates :return_date, presence: true
