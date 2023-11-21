class Reservation < ApplicationRecord
  belongs_to :restaurant
  has_many :reservation_guests
end
