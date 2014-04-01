class UpdateColumnName < ActiveRecord::Migration
  def change
    rename_column :sightings, :species_id, :specie_id
  end
end
