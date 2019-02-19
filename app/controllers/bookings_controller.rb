class BookingsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
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
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to gardens_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price, :user_id, :garden_id)
  end
end
