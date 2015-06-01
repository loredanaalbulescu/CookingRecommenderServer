json.array!(@plans) do |plan|
  json.extract! plan, :id, :user_id, :name, :plan_details
  json.url plan_url(plan, format: :json)
end
