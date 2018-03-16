# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string           not null
#  email           :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  admin           :boolean
#  profile         :text
#  hometown        :text
#

class User < ApplicationRecord
  has_many :users_sessions_memberships
  has_many :surf_sessions, through: :users_sessions_memberships
  before_save { self.email = email.downcase }
  has_many :surfboards, dependent: :destroy
  validates :name,  presence: true, length: { maximum: 50, minimum: 5 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255, minimum: 10 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def formatted_updated_at
    return updated_at.strftime('%A, %B %d, %G') if updated_at
  end

  def has_boards
    true unless quiver_size == 0
  end

  def quiver_size
    surfboards.size
  end
end
