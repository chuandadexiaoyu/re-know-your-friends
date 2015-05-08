json.array!(@users) do |user|
  json.extract! user, :id, :nick_name, :name, :age
  json.url user_url(user, format: :json)
end
