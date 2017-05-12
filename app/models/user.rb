# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean          default(FALSE), not null
#  profile         :text
#  hometown        :text
#

class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :surfboards
  validates :name,  presence: true, length: { maximum: 50, minimum: 5 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255, minimum: 10 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
