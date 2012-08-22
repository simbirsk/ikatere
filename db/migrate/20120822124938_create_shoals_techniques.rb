class CreateShoalsTechniques < ActiveRecord::Migration
  def up
    create_table :shoals_techniques, :id => false do |t|
      t.integer :shoal_id
      t.integer :technique_id
    end

  end

  def down
    drop_table :shoals_techniques
  end
end
