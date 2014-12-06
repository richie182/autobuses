json.array!(@users) do |user|
  json.extract! user, :id, :nombre, :user
  json.url user_url(user, format: :json)
end
