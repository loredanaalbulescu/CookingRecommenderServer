class Recipe < ActiveRecord::Base
  belongs_to :category
  def show_by_category_id(options={})
    Recipe.where(category_id: options[:category_id])
  end
end
