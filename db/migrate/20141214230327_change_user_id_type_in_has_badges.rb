class ChangeUserIdTypeInHasBadges < ActiveRecord::Migration
  def up
    change_column :has_badges, :user_id, :string
  end

  def down
    change_column :has_badges, :user_id, :integer
  end
end
