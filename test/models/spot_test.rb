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
  # test "the truth" do
  #   assert true
  # end
end
