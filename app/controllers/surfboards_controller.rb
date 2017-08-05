class SurfboardsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :delete]

  def create
    @user = User.find(params[:user_id])
    @surfboard = @user.surfboards.create(surfboard_params)
    redirect_to user_path(@user)
  end

  def edit
    @surfboard = Surfboard.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @surfboard = @user.surfboards.find(params[:id])
    @surfboard.update(surfboard_params)
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @surfboard = @user.surfboards.find(params[:id])
    @surfboard.destroy
    redirect_to user_path(@user)
  end

  private

  def surfboard_params
    params.require(:surfboard)
          .permit(:surfboard_brand,
                  :surfboard_length,
                  :surfboard_type,
                  :surfboard_rating)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
