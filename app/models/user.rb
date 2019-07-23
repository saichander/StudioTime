class User < ApplicationRecord
  has_many :studios
  has_many :bookings
  has_many :reviews
  has_many :payment_methods
end
