class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :subs_bookings, dependent: :destroy
  has_many :subscriptions, through: :subs_bookings
  has_many :act_bookings, dependent: :destroy
  has_many :booked_activities, through: :act_bookings, source: :activity
  mount_uploader :photo, PhotoUploader

  has_many :favorites, dependent: :destroy
  has_many :activities, through: :favorites

  def can_access_to_activity(activity)
    subscriptions.order(:created_at).last.subscription_number >= activity.subscription_number
  end
end
