class AddDateTimeToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :date_time, :datetime
  end
end
