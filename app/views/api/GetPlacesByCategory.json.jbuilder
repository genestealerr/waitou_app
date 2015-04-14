json.array!(@places) do |place|
	if (@category)
		if (place.category == @category.category)
			json.extract! place, :id, :name, :description, :category, :picture, :pricerate, :creator, :latitude, :longitude, :updator, :likes
		end
	end
end