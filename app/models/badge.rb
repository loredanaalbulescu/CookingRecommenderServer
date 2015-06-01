class Badge < ActiveRecord::Base
  has_many :has_badge, :foreign_key => "badge_id"
end
