if (@places)
	json.extract! @places, :id, :name, :category, :pricerate, :latitude, :longitude, :likes
end