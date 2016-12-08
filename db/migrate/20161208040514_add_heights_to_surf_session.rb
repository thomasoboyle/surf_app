class AddHeightsToSurfSession < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :height, :text
  end
end
