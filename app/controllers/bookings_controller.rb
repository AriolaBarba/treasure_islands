class BookingsController < ApplicationController
  def create

  end

  def show
    @booking = Booking.find(params[:id])
  end

end
