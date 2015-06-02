json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :description, :message, :score, :category_id, :category_name, :ingredients
  json.url recipe_url(recipe, format: :json)
end
