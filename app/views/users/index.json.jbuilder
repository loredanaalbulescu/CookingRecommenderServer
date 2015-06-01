json.array!(@users) do |user|
  json.extract! user, :id, :fb_id, :first_name, :last_name, :score
  json.url user_url(user, format: :json)
end
