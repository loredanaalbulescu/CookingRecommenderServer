class AddCategoryNameToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :category_name, :string
  end
end
