class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :review_rating
      t.string :review_description
      t.boolean :cancelled, default: false
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :boat, foreign_key: true

      t.timestamps
    end
  end
end
