class RenameRecipeIdToCategoryIdInCheckins < ActiveRecord::Migration
  def self.up
    rename_column :checkins, :recipe_id, :category_id
  end

  def self.down
    rename_column :checkins, :category_id, :recipe_id
  end
end
