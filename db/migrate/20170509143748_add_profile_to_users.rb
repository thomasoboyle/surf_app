class AddProfileToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile, :text
  end
end
