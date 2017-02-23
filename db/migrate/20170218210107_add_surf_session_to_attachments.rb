class AddSurfSessionToAttachments < ActiveRecord::Migration[5.0]
  def change
    add_reference :attachments, :surf_session, foreign_key: true
  end
end
