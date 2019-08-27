class SubsBooking < ApplicationRecord
  belongs_to :subscription
  belongs_to :user, dependent: :destroy
end
