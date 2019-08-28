class ActBooking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :activity
  has_one :review

  mount_uploader :photo_pass, PhotoUploader
end
