class IslandsController < ApplicationController

  def index
  end

  def show
    @island = Island.find(params[:id])
  end


  def create
  end
end
