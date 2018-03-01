class Boat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch

  pg_search_scope(
    :search_by_name_description_and_address,
    {
      against: [ :name, :description, :address ],
      associated_against: {
        user: [ :first_name, :last_name ]
      },
      using: { tsearch: { prefix: true } }
    }
  )

end
