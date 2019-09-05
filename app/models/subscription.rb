class Subscription < ApplicationRecord
  has_many :activities
  has_many :subs_bookings, dependent: :destroy
end
