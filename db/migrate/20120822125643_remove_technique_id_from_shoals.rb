class RemoveTechniqueIdFromShoals < ActiveRecord::Migration
  def up
    remove_column :shoals, :technique_id
  end

  def down
    add_column :shoals, :technique_id, :integer
  end
end
