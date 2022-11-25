class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :artworks
  has_many :bookings
  has_many :reviews
  has_one_attached :avatar


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# validates :first_name, presence: true
# validates :last_name, presence: true
# validates :email, uniqueness: true
