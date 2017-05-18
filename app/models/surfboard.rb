# == Schema Information
#
# Table name: surfboards
#
#  id               :integer          not null, primary key
#  surfboard_brand  :string
#  surfboard_length :string
#  surfboard_type   :integer
#  surfboard_rating :integer
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Surfboard < ApplicationRecord
  belongs_to :user

enum surfboard_type: %i[
                         shortboard
                         longboard
                         fish
                         bonzer
                         foamie
                         gun
                         step_up
                         other
                       ]

enum surfboard_rating: %i[
                           one_star
                           two_stars
                           three_stars
                           four_stars
                           five_stars
                         ]


end