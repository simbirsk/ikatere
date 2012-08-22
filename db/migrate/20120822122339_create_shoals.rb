class CreateShoals < ActiveRecord::Migration
  def change
    create_table :shoals do |t|
      t.integer :location_id
      t.integer :fish_id
      t.integer :technique_id

      t.timestamps
    end
  end
end
