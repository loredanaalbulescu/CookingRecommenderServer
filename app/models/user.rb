class User < ActiveRecord::Base
  has_many :checkin, :foreign_key => "user_id"
  has_many :has_badge, :foreign_key => "user_id"

  def show_by_user_id(options={})
    User.where(fb_id: options[:fb_id])
  end

end
