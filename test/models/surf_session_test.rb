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
#  consistency         :integer          default("no_waves"), not null
#  session_rating      :integer          default("one_star"), not null
#  attachment_id       :integer
#  image_file_name     :string
#  image_content_type  :string
#  image_file_size     :integer
#  image_updated_at    :datetime
#

#

require 'test_helper'

class SurfSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
