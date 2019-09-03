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


  def average
    if self.reviews.empty?
      return 0
    else
      sum_of_ratings = 0
      self.reviews.each do |review|
        sum_of_ratings += review.rating
      end
      return sum_of_ratings.fdiv(self.reviews.size).round(1)
    end
  end
end
