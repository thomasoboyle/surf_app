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
end
