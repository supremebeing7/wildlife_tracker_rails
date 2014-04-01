class Region < ActiveRecord::Base
  has_many :sightings

  def self.unselected_regions(sighting)
    Region.where('id != ?', sighting.region_id)
  end
end
