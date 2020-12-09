class CommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :edit, :destroy]
  def create
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = @surf_session.comments.create(comment_params)
    redirect_to surf_session_path(@surf_session)
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = @surf_session.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to surf_session_path(@surf_session)
  end

  def destroy
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = @surf_session.comments.find(params[:id])
    @comment.destroy
    redirect_to surf_session_path(@surf_session)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
