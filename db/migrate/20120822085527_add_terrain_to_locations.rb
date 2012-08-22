class AddTerrainToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :terrain_id, :integer
  end
end
