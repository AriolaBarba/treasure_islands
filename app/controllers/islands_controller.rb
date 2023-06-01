class IslandsController < ApplicationController
  def index
    @islands = Island.geocoded
    @markers = @islands.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { island: island }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @island = Island.find(params[:id])
    @booking = Booking.new
  end

  def new
    @island = Island.new
    @island.latitude = 37.1234
    @island.longitude = -122.5678
    @island.save
    end
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to islands_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :location, :price, photos: [])
  end
