class ActBooking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  belongs_to :review
end
