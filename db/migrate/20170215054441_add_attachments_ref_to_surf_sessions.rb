class AddAttachmentsRefToSurfSessions < ActiveRecord::Migration[5.0]
  def change
    add_reference :surf_sessions, :attachment, foreign_key: true
  end
end
