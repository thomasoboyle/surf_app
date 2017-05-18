class SurfboardsController < ApplicationController
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
end
