if (@places)
	json.extract! @places, :id, :name, :priceRate, :lattitude, :longitude, :likes
end