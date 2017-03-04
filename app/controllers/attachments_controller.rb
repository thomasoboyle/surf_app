class AttachmentsController < ApplicationController
  def index
    @attachment = Attachment.find(params[:id])
  end
end
