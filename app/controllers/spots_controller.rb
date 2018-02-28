class SpotsController < ApplicationController
  before_action :logged_in_user, only: [:new]
  def index
    @spots = Spot.all.order(location: :asc).order(title: :asc)
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
    params.require(:spot).permit(
      :title,
      :location,
      :wave_height
    )
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
