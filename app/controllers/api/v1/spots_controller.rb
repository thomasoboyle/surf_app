module Api::V1
  class SpotsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def index
      @spots = Spot.paginate(:page => params[:page], :per_page => 20).order(location: :asc).order(title: :asc)
      render json: @spots
    end
  end
end
