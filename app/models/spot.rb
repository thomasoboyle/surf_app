class Spot < ApplicationRecord
  validates :title,     presence: true,
                        length: { minimum: 5,
                        too_short: "#{:title} must be at least %{count} characters long" }
  validates :location,  presence: true,
                        length: { minimum: 5 }
end
