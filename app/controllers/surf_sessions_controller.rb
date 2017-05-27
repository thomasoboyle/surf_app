class SurfSessionsController < ApplicationController
  def index
    @surf_sessions = SurfSession.paginate(:page => params[:page], :per_page => 20).order(date: :desc)
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

    params[:surf_session].fetch(:image, []).each do |image|
      @surf_session.attachments.create(:image => image)
    end

    if @surf_session.update(surf_params)
      redirect_to @surf_session
    else
      render 'edit'
    end
  end

  def destroy
    @surf_session = SurfSession.find(params[:id])
    @surf_session.destroy

    redirect_to surf_sessions_path
  end

  private

  def surf_params
    params
      .require(:surf_session)
      .permit(
        :average_wave_height,
        :consistency,
        :date,
        :end_time,
        :height,
        :image,
        :session_rating,
        :session_summary,
        :spot_id,
        :user,
        :start_time,
        :surf_conditions,
        :surfer,
        :tag_list
      )
  end
end
