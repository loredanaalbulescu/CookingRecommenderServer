class Checkin < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  def show_by_user_id(options={})
    Checkin.where(user_id: options[:user_id])
  end

  def show_by_category_id(options={})
    Checkin.where(categoy_id: options[:category_id])
  end
end
