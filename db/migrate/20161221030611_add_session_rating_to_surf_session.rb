class AddSessionRatingToSurfSession < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :session_rating, :integer, default: 0, null: false
  end
end
