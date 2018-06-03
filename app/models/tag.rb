# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  has_many    :taggings
  has_many    :surf_sessions, through: :taggings

  validates :name, presence: true

  def formmatted_name
    name.titleize
  end
end
