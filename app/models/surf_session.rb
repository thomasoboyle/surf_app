class SurfSession < ApplicationRecord
  belongs_to :spot
  has_many   :comments
   validates :date,
            :start_time,
            :end_time,
            :average_wave_height,
            :session_summary,
            :spot_id,             presence: true

end
