class AddSurferToSurfSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :surfer, :string
  end
end
