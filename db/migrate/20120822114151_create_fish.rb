class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
