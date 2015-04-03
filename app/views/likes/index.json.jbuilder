json.array!(@likes) do |like|
  json.extract! like, :id, :deviceId
  json.url like_url(like, format: :json)
end
