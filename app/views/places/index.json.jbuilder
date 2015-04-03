json.array!(@places) do |place|
  json.extract! place, :id, :name, :priceRate, :lattitude, :longitude, :likes
  json.url place_url(place, format: :json)
end
