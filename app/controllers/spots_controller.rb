class SpotsController < ApplicationController
  def index
    @all_spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
  end

  def create
    @spot = Spot.new(spot_params)

    @spot.save
    redirect_to @spot
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :location)
  end

end
