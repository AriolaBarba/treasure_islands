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
    @user = current_user
    @island = Island.new(island_params)
    @island.user = @user
    if @island.save
      redirect_to islands_path
    else
      render "new"
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :description, :location, :price)
  end
end
