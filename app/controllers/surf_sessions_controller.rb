class SurfSessionsController < ApplicationController
  def index
    @surf_sessions = SurfSession.all
  end

  def show
    @surf_session = SurfSession.find(params[:id])
  end

  def new
    @surf_session = SurfSession.new
  end

  def edit
    @surf_session = SurfSession.find(params[:id])
  end

  def create
    @surf_session = SurfSession.new(surf_params)

     if @surf_session.save
      redirect_to @surf_session
    else
      render 'new'
    end
  end

  def update
    @surf_session = SurfSession.find(params[:id])

    if @surf_session.update(surf_params)
      redirect_to @surf_session
    else
      render 'edit'
    end
  end

  private

  def surf_params
    params.require(:surf_session).permit(:date, :start_time, :end_time, :average_wave_height, :session_summary, :spot_id)
  end

end
