class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.references :location
      t.references :user

      t.timestamps
    end
    add_index :reviews, :location_id
    add_index :reviews, :user_id
  end
end
