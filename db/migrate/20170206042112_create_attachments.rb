class CreateAttachments < ActiveRecord::Migration[5.0]
  def up
    create_table :attachments do |t|
      t.references :surf_session, foreign_key: true
      t.text        :image_file_name
      t.text        :image_content_type
      t.integer     :image_file_size
      t.datetime    :image_updated_at

      t.timestamps
    end
  end

  def down
    remove_foreign_key :attachments, :surf_sessions
    drop_table :attachments
  end
end
