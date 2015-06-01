class Plan < ActiveRecord::Base
   belongs_to :user

   def show_by_user_id(options={})
     Plan.where(user_id: options[:user_id])
   end

end
