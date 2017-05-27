class CreateUsersSessionsMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :users_sessions_memberships do |t|
      t.references :user, foreign_key: true
      t.references :surf_session, foreign_key: true

      t.timestamps
    end
  end
end
