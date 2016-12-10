class AddSurfConditionsToSurfSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :surf_conditions, :integer, default: 0, null: false
  end
end
