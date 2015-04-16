json.array!(@category) do |cat|
	json.extract! cat, :id, :name, :description, :category, :picture, :pricerate, :creator, :latitude, :longitude, :updator, :likes
end