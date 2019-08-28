class Place < ApplicationRecord
  has_many :activities, dependent: :destroy
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  def full_address
    "#{address}, #{city}, #{country}"
  end
end
