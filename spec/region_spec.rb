require 'spec_helper'

describe Region do
  describe ".unselected_regions" do
    it "gives us back all regions that weren't selected" do
      test_region1 = Region.create(name: "test1")
      test_region2 = Region.create(name: "test2")
      test_sighting = Sighting.create(region_id: test_region1.id)
      Region.unselected_regions(test_sighting).should eq [test_region2]
    end
  end
end
