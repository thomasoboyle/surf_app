class CommentsController < ApplicationController

  def edit
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = Comment.find(params[:id])
  end

  def create
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = @surf_session.comments.create(comment_params)
    redirect_to surf_session_path(@surf_session)
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
end
