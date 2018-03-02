class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat_id = params[:boat_id]
    authorize @booking
    @booking.save
    redirect_to boat_path(@booking.boat_id)
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
    authorize @booking
  end

  def cost
    raise
    @booking = Booking.new(booking_params)
    days = @booking.end_date - @booking.start_date
    @booking.cost = days * @booking.boat.price_per_day
    render new
  end
  # def show
  #   @booking = Booking.find(params[:id])
  #   authorize @booking
  # end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    authorize @booking
    redirect_to boat_path(@booking.boat)
  end

  private

  def booking_params
    params.require(:booking).permit(:review_description, :review_rating, :cancelled, :start_date, :end_date, :boat_id, :cost)
  end
end
