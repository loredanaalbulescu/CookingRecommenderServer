class HasBadge < ActiveRecord::Base
  belongs_to :user
  belongs_to :badge

  def show_by_user_id(options={})
    HasBadge.where(user_id: options[:user_id])
  end

  def show_by_badge_id(options={})
    HasBadge.where(badge_id: options[:badge_id])
  end
end
