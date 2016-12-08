# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  title      :string
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lat        :float
#  long       :float
#  spot_id    :integer
#

require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
