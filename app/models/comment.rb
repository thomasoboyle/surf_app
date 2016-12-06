class Comment < ApplicationRecord
  belongs_to :surf_session
  validates :commenter, presence: true,
                        length: { minimum: 2 }
  validates :body,      presence: true,
                        length: { minimum: 2 }
end
