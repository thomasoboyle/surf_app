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
#  image_file_name     :string
#  image_content_type  :string
#  image_file_size     :integer
#  image_updated_at    :datetime
#

class SurfSession < ApplicationRecord
  belongs_to  :spot
  has_many    :comments, dependent: :destroy
  has_many    :attachments
  has_many    :taggings
  has_many    :tags, through: :taggings, dependent: :destroy

   validates :date,
            :start_time,
            :end_time,
            :average_wave_height,
            :session_summary,
            :spot_id,             presence: true

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    new_or_found_tags = tag_names.collect {|name| Tag.find_or_create_by(name: name)}
    self.tags = new_or_found_tags
  end

  def to_s
    name
  end

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


end
