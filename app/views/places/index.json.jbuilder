json.array!(@places) do |place|
  json.extract! place, :id, :name, :category, :pricerate, :latitude, :longitude, :likes
  json.url place_url(place, format: :json)
end
