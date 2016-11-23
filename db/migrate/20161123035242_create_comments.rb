class CreateComments < ActiveRecord::Migration[5.0]
  def up
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :surf_session, foreign_key: true

      t.timestamps
    end
  end

  def down
    remove_foreign_key :comments, :surf_sessions
    drop_table :comments
  end
end
