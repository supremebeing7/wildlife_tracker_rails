class UpdateSightingsRegions < ActiveRecord::Migration
  def change
    remove_column :regions, :sighting_id
    add_column :regions, :name, :string
    add_column :sightings, :region_id, :integer
    add_column :sightings, :location, :string
  end
end
