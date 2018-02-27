class BookingsController < ApplicationController
  authorize @booking

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

end
