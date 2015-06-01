class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :message
      t.integer :score
      t.integer :category_id

      t.timestamps
    end
  end
end
