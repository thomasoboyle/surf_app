# == Schema Information
#
# Table name: taggings
#
#  id              :integer          not null, primary key
#  tag_id          :integer
#  surf_session_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :surf_session

  validates :surf_session_id,
            :tag_id, presence: true
end
