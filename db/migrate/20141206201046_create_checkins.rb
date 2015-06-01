class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.text :description
      t.datetime :date_time
      t.string :picture
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
