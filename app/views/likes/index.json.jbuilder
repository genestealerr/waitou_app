json.array!(@likes) do |like|
  json.extract! like, :id, :deviceid
  json.url like_url(like, format: :json)
end
