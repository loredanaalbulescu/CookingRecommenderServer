class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :user_id
      t.string :name
      t.text :plan_details

      t.timestamps
    end
  end
end
