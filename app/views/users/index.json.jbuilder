json.array!(@users) do |user|
  json.extract! user, :id, :name, :mail, :password, :userpicture
  json.url user_url(user, format: :json)
end
