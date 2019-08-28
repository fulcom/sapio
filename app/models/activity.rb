class Activity < ApplicationRecord
  belongs_to :place
  belongs_to :subscription
  has_many :act_bookings

  mount_uploader :photo_one, PhotoUploader
  mount_uploader :photo_two, PhotoUploader
  mount_uploader :photo_three, PhotoUploader

  has_many :reviews, through: :act_bookings

  has_many :favorites
  include PgSearch::Model
  multisearchable against: [:category, :description]
end
