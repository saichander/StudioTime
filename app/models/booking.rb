class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :studio
  has_many :payments
end
