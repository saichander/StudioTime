class Studio < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :images
  has_many :reviews
end
