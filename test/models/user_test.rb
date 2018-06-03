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
  def setup
    @user = User.new(name: "Test User", email: "test@xample.com", password: "password")
  end

  test "valid user" do
    assert @user.valid?
  end

  test "invalid without email" do
    @user.email = nil
    refute @user.valid?
  end

  test "invalid without password" do
    @user.password = nil
    refute @user.valid?
  end

  test 'invalid without name' do
    @user.name = nil
    refute @user.valid?
  end

  test "should save user" do
    assert @user.save, "Saved the user"
  end
end
