class Tagging < ApplicationRecord
  belongs_to :tag
  belongs_to :surf_session
end
