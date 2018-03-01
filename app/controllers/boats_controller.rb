class BoatsController < ApplicationController


  def index
    # @boats = Boat.all
    @boats = policy_scope(Boat).order(created_at: :desc)
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat
    @boat.save
    redirect_to boats_path
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def show
    @boat = Boat.find(params[:id])
    @markers = [{
      lat: @boat.latitude,
      lng: @boat.longitude#,
      # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
    # authorize @marker
    authorize @boat
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :photo, :nr_of_rooms, :nr_of_guests, :price_per_day, :address)
  end
end
