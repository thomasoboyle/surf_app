# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  title      :string
#  location   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lat        :float
#  long       :float
#  spot_id    :integer
#

class Spot < ApplicationRecord
  has_many :surf_sessions
  validates :title,     presence: true,
                        uniqueness: true,
                        length: { minimum: 5,
                        too_short: "#{:title} must be at least %{count} characters long" }
  validates :location,  presence: true,
                        length: { minimum: 2 }
end
