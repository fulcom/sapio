class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :subs_bookings, dependent: :destroy
  has_many :act_bookings, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  has_many :favorites, dependent: :destroy
  has_many :activities, through: :favorites
end
