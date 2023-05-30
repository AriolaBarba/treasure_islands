class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
  end

  def create
  end
end
