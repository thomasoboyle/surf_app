# == Schema Information
#
# Table name: attachments
#
#  id                 :integer          not null, primary key
#  image_file_name    :text
#  image_content_type :text
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  surf_session_id    :integer
#

require 'test_helper'

class AttachmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
