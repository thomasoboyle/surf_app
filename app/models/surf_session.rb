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
#  surf_conditions     :integer          default("poor"), not null
#  consistency         :integer
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

  enum average_wave_height: [:flat, 
                            :knee_high,
                            :waist_high,
                            :chest_high, 
                            :head_high, 
                            :overhead 
                           ]

  enum surf_conditions:    [:poor,
                            :fair,
                            :good,
                            :epic
                           ]

  enum consistency:        [:no_waves,
                            :very_inconsistent,
                            :inconsistent,
                            :fair_about_of_waves,
                            :consistent,
                            :pumping
                           ]


end
