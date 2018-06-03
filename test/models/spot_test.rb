# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  title      :string
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wave_type  :integer          default("beach_break"), not null
#

require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  def setup
    @spot = Spot.new(title: 'Rincon', location: 'SB')
  end

  test "valid spot" do
    assert @spot.valid?
  end

  test "invalid without title" do
    @spot.title = nil
    refute @spot.valid?
  end

  test "invalid without location" do
    @spot.location = nil
    refute @spot.valid?
  end

  test "should save spot" do
    assert @spot.save, "Saved the spot"
  end
end
