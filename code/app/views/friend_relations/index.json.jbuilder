json.array!(@friend_relations) do |friend_relation|
  json.extract! friend_relation, :id, :small_id, :big_id, :status
  json.url friend_relation_url(friend_relation, format: :json)
end
