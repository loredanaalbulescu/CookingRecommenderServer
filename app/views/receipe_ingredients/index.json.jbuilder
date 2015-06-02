json.array!(@receipe_ingredients) do |receipe_ingredient|
  json.extract! receipe_ingredient, :id, :receipe_id, :ingredient_id, :string
  json.url receipe_ingredient_url(receipe_ingredient, format: :json)
end
