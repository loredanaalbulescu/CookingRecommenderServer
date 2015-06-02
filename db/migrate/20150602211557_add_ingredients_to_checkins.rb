class AddIngredientsToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :ingredients, :string
  end
end
