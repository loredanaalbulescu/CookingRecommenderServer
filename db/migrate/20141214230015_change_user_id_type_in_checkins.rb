class ChangeUserIdTypeInCheckins < ActiveRecord::Migration
  def up
    change_column :checkins, :user_id, :string
  end

  def down
    change_column :checkins, :user_id, :integer
  end
end
