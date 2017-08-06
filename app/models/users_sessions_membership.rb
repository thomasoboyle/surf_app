# == Schema Information
#
# Table name: users_sessions_memberships
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  surf_session_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersSessionsMembership < ApplicationRecord
  belongs_to :user
  belongs_to :surf_session, inverse_of: :users_sessions_memberships
end
