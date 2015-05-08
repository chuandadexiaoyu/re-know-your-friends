json.array!(@addresses) do |address|
  json.extract! address, :id, :user_id, :content
  json.url address_url(address, format: :json)
end
