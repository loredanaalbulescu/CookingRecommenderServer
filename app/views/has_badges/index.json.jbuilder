json.array!(@has_badges) do |has_badge|
  json.extract! has_badge, :id, :user_id, :badge_id
  json.url has_badge_url(has_badge, format: :json)
end
