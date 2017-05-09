class AddHomtownToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :hometown, :text
  end
end
