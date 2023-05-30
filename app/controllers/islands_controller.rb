class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end


  def create
<<<<<<< HEAD
    @island = Island.new(island_params)
    @island.save
  end

  private

  def island_params
  params.require(:island).permit(:name, :description, :location, :price)
=======
>>>>>>> 0420444623dc9bacf3d16977c57a45ba761132f3
  end
end
