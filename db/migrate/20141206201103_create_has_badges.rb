class CreateHasBadges < ActiveRecord::Migration
  def change
    create_table :has_badges do |t|
      t.integer :user_id
      t.integer :badge_id

      t.timestamps
    end
  end
end
