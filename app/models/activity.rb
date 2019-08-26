class Activity < ApplicationRecord
  belongs_to :place
  belongs_to :subscription
  has_many :act_bookings
end
