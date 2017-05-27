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

require 'test_helper'

class UsersSessionsMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
