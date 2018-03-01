class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
