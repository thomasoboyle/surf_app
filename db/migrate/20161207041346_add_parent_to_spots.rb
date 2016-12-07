class AddParentToSpots < ActiveRecord::Migration[5.0]
  def change
    add_reference :spots, :spot, foreign_key: true
  end
end
