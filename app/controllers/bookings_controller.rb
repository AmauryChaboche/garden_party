class BookingsController < ApplicationController


  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
    authorize @booking
  end

  def index
    @my_bookings = policy_scope(Booking.where(user_id: current_user))
    authorize @my_bookings
  end

  def create
    sleep 1.5
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.garden = Garden.find(params[:garden_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
    @map_gardens = []
    @map_gardens << @booking

    @markers = @map_gardens.map do |garden|
      {
        lng: @booking.garden.longitude,
        lat: @booking.garden.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { garden: garden })
      }
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to gardens_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :user_id, :garden_id)
  end
end
