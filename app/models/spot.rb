# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  title      :string
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wave_type  :integer          default("beach_break"), not null
#

class Spot < ApplicationRecord
  has_many :surf_sessions
  validates :title,     presence: true,
                        uniqueness: { case_sensitive: false },
                        length: { minimum: 4,
                        too_short: "Title must be at least #{count} characters long" }
  validates :location,  presence: true,
                        length: { minimum: 2 }

  enum wave_type: %i[
    beach_break
    point_break
    reef_break
  ]

  def formatted_wave_type
    wave_type.titleize
  end
end
