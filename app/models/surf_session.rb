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
#  consistency         :integer          default("no_waves"), not null
#  session_rating      :integer          default("one_star"), not null
#  like_count          :integer          default(0), not null
#  attachment_id       :integer
#

class SurfSession < ApplicationRecord
  belongs_to :spot
  has_many   :comments, dependent: :destroy
  has_many   :attachments
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
                            :fair_amout_of_waves,
                            :consistent,
                            :pumping
                           ]

  enum session_rating:     [:one_star,
                            :two_stars,
                            :three_stars,
                            :four_stars,
                            :five_stars
                          ]


  def images=(image_params)
    binding.pry
  end
end
