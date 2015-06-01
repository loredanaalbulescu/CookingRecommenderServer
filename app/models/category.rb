class Category < ActiveRecord::Base
    has_many :checkin, :foreign_key => "recipe_id"
end
