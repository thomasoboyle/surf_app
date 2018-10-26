module Api::V1
  class SurfSessionsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def index
      @surf_sessions = SurfSession.all
      render json: @surf_sessions
    end
  end
end

