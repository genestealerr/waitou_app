json.array!(@places) do |place|
	json.extract! place, :id, :name, :description, :category, :picture, :pricerate, :creator, :latitude, :longitude, :updator, :likes
end