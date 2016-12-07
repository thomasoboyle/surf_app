class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spots = Spot.all
    @spot = Spot.new
  end

  def edit
    @spots = Spot.all
    @spot = Spot.find(params[:id])
  end

  def create
    @spots = Spot.all
    @spot = Spot.new(spot_params)

    if @spot.save
      redirect_to @spot
    else
      render 'new'
    end
  end

  def update
    @spots = Spot.all
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
    params.require(:spot).permit(:title, :location, :spot_id)
  end

end
