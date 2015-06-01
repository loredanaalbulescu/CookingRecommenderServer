class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.text :description
      t.integer :score
      t.string :picture

      t.timestamps
    end
  end
end
