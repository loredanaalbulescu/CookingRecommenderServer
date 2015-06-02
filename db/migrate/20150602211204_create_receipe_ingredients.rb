class CreateReceipeIngredients < ActiveRecord::Migration
  def change
    create_table :receipe_ingredients do |t|
      t.string :receipe_id
      t.string :ingredient_id
      t.string :string

      t.timestamps
    end
  end
end
