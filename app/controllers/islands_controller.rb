class IslandsController < ApplicationController
  def index

  end

  def show

  end

  def create
    @island = Island.new(island_params)
    @island.save
  end

  private

  def island_params
  params.require(:island).permit(:name, :description, :location, :price)
  end

end
