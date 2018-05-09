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
  def setup
    @surf_session = surf_sessions(:one)
  end

  test "valid surf session" do
    assert @surf_session.valid?
  end

  test "invalid surf session without date" do
    @surf_session.date = nil
   refute @surf_session.valid?
  end

  test "invalid surf session without start_time" do
    @surf_session.start_time = nil
    refute @surf_session.valid?
  end

  test "invalid surf session without end_time" do
    @surf_session.end_time = nil
    refute @surf_session.valid?
  end

  test "invalid surf session without average_wave_height" do
    @surf_session.average_wave_height = nil
    refute @surf_session.valid?
  end

  test "invalid surf session without session_summary" do
    @surf_session.session_summary= nil
    refute @surf_session.valid?
  end

  test "invalid surf session without spot_id" do
    @surf_session.spot_id = nil
    refute @surf_session.valid?
  end
end
