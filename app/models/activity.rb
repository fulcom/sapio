class Activity < ApplicationRecord
  belongs_to :place
  belongs_to :subscription
  has_many :act_bookings
  has_many :reviews, through: :act_bookings
end
