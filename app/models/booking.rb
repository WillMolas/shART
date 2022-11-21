class Booking < ApplicationRecord
  belongs_to :user, :artwork
end

# validates :borrow_date, presence: true
# validates :return_date, presence: true
