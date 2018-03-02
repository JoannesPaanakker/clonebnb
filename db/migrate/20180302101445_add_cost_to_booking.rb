class AddCostToBooking < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :cost, :integer, default: 0
  end
end
