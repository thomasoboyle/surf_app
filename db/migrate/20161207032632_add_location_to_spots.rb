class AddLocationToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :lat, :float
    add_column :spots, :long, :float
  end
end
