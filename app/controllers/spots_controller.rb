class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)

    if @spot.save
      redirect_to @spot
    else
      render 'new'
    end
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def update
    @spot = Spot.find(params[:id])

    if @spot.update(spot_params)
      redirect_to @spot
    else
      render 'edit'
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy

    redirect_to spots_path
  end

  private

  def spot_params
    params.require(:spot).permit(:title, :location)
  end
end
