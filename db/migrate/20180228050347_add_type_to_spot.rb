class AddTypeToSpot < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :wave_type, :integer, default: 0, null: false
  end
end
