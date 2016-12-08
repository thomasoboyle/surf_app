class Spot < ApplicationRecord
  has_many :surf_sessions
  belongs_to :spots, optional: true
  validates :title,     presence: true,
                        uniqueness: true,
                        length: { minimum: 5,
                        too_short: "#{:title} must be at least %{count} characters long" }
  validates :location,  presence: true,
                        length: { minimum: 2 }
  def parent_title
    # initialize parentTitle to "root"
    title = ""
    #  if we have a parent
    if self.spot_id
      # find the parent
      parent = Spot.find(self.spot_id)
      # read its parentTitle and assign it to @parentName
      title = parent.title
    end
  end

end

