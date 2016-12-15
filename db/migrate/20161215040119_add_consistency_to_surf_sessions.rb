class AddConsistencyToSurfSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :consistency, :integer
  end
end
