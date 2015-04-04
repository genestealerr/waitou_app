json.array!(@places) do |place|
	if (@category)
		if (place.category == @category.category)
			json.extract! place, :id, :name, :category, :pricerate, :latitude, :longitude, :likes
		end
	end
end