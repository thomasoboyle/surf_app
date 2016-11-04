class SpotsController < ApplicationController
  def index
    @all_spots = Spot.all
  end
end
