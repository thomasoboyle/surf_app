# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  commenter       :string
#  body            :text
#  surf_session_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :surf_session
  validates :commenter, presence: true,
                        length: { minimum: 2 }
  validates :body,      presence: true,
                        length: { minimum: 2 }
end
