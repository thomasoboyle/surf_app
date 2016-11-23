class CommentsController < ApplicationController
  def create
    @surf_session = SurfSession.find(params[:surf_session_id])
    @comment = @surf_session.comments.create(comment_params)
    redirect_to surf_session_path(@surf_session)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
