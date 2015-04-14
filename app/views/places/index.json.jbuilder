json.array!(@places) do |place|
  json.extract! place, :id, :name, :description, :category, :picture, :pricerate, :creator, :longitude, :latitude, :updator, :likes
  json.url place_url(place, format: :json)
end
