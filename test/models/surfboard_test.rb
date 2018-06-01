# == Schema Information
#
# Table name: surfboards
#
#  id               :integer          not null, primary key
#  surfboard_brand  :string
#  surfboard_length :string
#  surfboard_type   :integer
#  surfboard_rating :integer
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class SurfboardTest < ActiveSupport::TestCase
  def setup
    @surfboard = Surfboard.new(
      surfboard_brand: "Hobie",
      surfboard_length: "6'1",
      surfboard_type: "shortboard",
      surfboard_rating: "one_star",
      user_id: 1,
      created_at: Time.now,
      updated_at: Time.now
      )
  end

  test "valid surfboard" do
    assert @surfboard.valid?
  end

  test "invalid without user" do
    @surfboard.user_id = nil
    refute @surfboard.valid?
  end

  test "invalid without created_at" do
    @surfboard.created_at = nil
    refute @surfboard.valid?
  end

  test "invalid without updated_at" do
    @surfboard.updated_at = nil
    refute @surfboard.valid?
  end

  test "invalid without surfboard_brand" do
    @surfboard.surfboard_brand = nil
    refute @surfboard.valid?
  end

  test "invalid without surfboard_length" do
    @surfboard.surfboard_length = nil
    refute @surfboard.valid?
  end

  test "invalid without surfboard_type" do
    @surfboard.surfboard_type = nil
    refute @surfboard.valid?
  end

  test "invalid without surfboard_rating" do
    @surfboard.surfboard_rating = nil
    refute @surfboard.valid?
  end

end
