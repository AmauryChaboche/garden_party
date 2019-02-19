class BookingsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
    authorize @booking
  end

  def my_bookings
    @my_bookings = Booking.where(user_id: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.garden = Garden.find(params[:garden_id])
    @booking.user = current_user
    if @booking.save
      redirect_to garden_booking_path(params[:garden_id], @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
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
