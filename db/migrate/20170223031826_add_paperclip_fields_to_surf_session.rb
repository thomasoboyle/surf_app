class AddPaperclipFieldsToSurfSession < ActiveRecord::Migration[5.0]
  def change
    add_column :surf_sessions, :image_file_name,     :string
    add_column :surf_sessions, :image_content_type,  :string
    add_column :surf_sessions, :image_file_size,     :integer
    add_column :surf_sessions, :image_updated_at,    :datetime
  end
end
