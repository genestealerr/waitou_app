json.array!(@categories) do |category|
  json.extract! category, :id, :name, :iconurl
  json.url category_url(category, format: :json)
end
