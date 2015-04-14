if (@places)
	json.extract! @places, :id, :name, :description, :category, :picture, :pricerate, :creator, :latitude, :longitude, :updator, :likes
end