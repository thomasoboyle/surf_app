class CreateSurfSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :surf_sessions do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :average_wave_height
      t.text :session_summary
      t.integer :spot_id

      t.timestamps
    end
  end
end
