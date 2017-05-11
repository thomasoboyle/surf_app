class CreateSurfboards < ActiveRecord::Migration[5.0]
  def up
    create_table :surfboards do |t|
      t.string  :surfboard_brand
      t.string  :surfboard_length
      t.integer :surfboard_type
      t.integer :surfboard_rating
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

  def down
    remove_foreign_key :surfboards, :user
    drop_table :surfboards
  end
end
