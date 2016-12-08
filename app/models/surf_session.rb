# == Schema Information
#
# Table name: surf_sessions
#
#  id                  :integer          not null, primary key
#  date                :date
#  start_time          :time
#  end_time            :time
#  average_wave_height :integer
#  session_summary     :text
#  spot_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  surfer              :string
#

class SurfSession < ApplicationRecord
  belongs_to :spot
  has_many   :comments, dependent: :destroy
   validates :date,
            :start_time,
            :end_time,
            :average_wave_height,
            :session_summary,
            :spot_id,             presence: true

  WAVESHEIGHTS = [
    "Flat",
    "Knee High",
    "Waist High",
    "Chest High",
    "Head Hight",
    "Over Head"
  ]

end
