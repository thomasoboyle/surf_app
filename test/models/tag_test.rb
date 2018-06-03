# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TagTest < ActiveSupport::TestCase

  def setup
    @tag = tags(:one)
  end

  test "valid tag" do
    assert @tag.valid?
  end

  test "invalid without name" do
    @tag.name = nil
    refute @tag.valid?
  end

  test "should save tag" do
    assert @tag.save, "Saved the tag"
  end
end
