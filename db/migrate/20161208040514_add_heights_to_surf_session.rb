class AddHeightsToSurfSession < ActiveRecord::Migration[5.0]
  def change
    SurfSession.all.each do |sesh|
      case sesh.average_wave_height
      when 0, 1
        sesh.flat!
      when 2
        sesh.knee_high!
      when 3
        sesh.waist_high!
      when 4
        sesh.chest_high!
      when 5
        sesh.head_high!
      else
        sesh.overhead!
      end
    end
  end
end
