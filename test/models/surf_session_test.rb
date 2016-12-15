# == Schema Information
#
# Table name: surf_sessions
#
#  id                  :integer          not null, primary key
#  date                :date
#  start_time          :time
#  end_time            :time
#  average_wave_height :integer
#  session_summary     :text
#  spot_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  surfer              :string
#  surf_conditions     :integer          default("poor"), not null
#  consistency         :integer
#

require 'test_helper'

class SurfSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
