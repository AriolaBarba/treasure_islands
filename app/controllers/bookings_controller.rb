class BookingsController < ApplicationController

  def mybookings
    @bookings = Booking.where(user: current_user)
  end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    @booking.user = current_user
    if @booking.save
      redirect_to mybookings_path, alert: "Your booking was successful"
    else
      render island_path(@island), status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
