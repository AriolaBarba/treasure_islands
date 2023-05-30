class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
<<<<<<< HEAD
    
=======
<<<<<<< HEAD
    @island = Island.new(island_params)
    @island.save
  end

  private

  def island_params
  params.require(:island).permit(:name, :description, :location, :price)
=======
>>>>>>> 0420444623dc9bacf3d16977c57a45ba761132f3
>>>>>>> 920955ae9d71e09eae84415d8b9d0081ff144f9e
  end
end
