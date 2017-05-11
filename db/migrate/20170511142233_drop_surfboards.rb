class DropSurfboards < ActiveRecord::Migration[5.0]
  def change
    drop_table :surfboards
  end
end
