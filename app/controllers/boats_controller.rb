class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @restaurant.save
    redirect_to boats_path
  end

  def new
    @boat = Boat.new
  end

  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :photo, :nr_of_rooms, :nr_of_guests)
  end
end
