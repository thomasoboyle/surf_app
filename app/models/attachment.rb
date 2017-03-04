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

class Attachment < ApplicationRecord
  belongs_to :surf_session
  has_attached_file :image, styles: {medium: "300x300", thumb: "100X100"}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
