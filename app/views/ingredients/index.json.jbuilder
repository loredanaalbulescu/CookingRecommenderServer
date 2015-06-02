json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :name, :price, :calories
  json.url ingredient_url(ingredient, format: :json)
end
