class Tag < ApplicationRecord
  has_many    :taggings
  has_many    :surf_sessions, through: :taggings
end
