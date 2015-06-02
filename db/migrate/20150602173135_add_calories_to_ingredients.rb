class AddCaloriesToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :calories, :integer
  end
end
