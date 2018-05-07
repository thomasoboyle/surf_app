# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean
#  profile         :text
#  hometown        :text
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without name" do
    user = User.new
    assert_not user.save, "Saved the user without a name"
  end

  test "should save user" do
    user = User.new(name: "Test User", email: "test@xample.com", password: "password")
    assert user.save, "Saved the user"
  end
end
