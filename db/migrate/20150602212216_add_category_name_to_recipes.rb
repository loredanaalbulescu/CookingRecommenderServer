class AddCategoryNameToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :category_name, :string
  end
end
