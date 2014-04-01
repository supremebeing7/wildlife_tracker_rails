class CreateTables < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name
    end

    create_table :sightings do |t|
      t.datetime :date
      t.integer :species_id
    end

    create_table :regions do |t|
      t.integer :sighting_id
    end
  end
end
