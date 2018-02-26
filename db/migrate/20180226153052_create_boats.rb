class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :nr_of_guests
      t.integer :nr_of_rooms
      t.string :photo
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
