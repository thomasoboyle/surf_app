class AddConsistencyToSurfSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :consistency, :integer, default: 0, null: false
  end
end
