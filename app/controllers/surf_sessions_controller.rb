class SurfSessionsController < ApplicationController
  def new
    @surf_session = SurfSession.new
  end

  def create
    render plain: params[:surf_session].inspect
  end

end
