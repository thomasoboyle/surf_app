class SpotsController < ApplicationController
  def index
    @all_spots = Spot.all
  end

  def new
  end

  def create
    render plain: params[:spot].inspect
  end
end
