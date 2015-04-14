class ApiController < ApplicationController

	# GET /places
	# GET /places.json
	def index
	end
	
	# GET /GetPlaces
	# GET /GetPlaces.json
	def GetPlaces
		
		@places = Places.all		
	end
	
	# GET /GetPlaceByName
	# GET /GetPlaceByName.json
	def GetPlaceByName
		toFind = params[:places]
		
		@places = Places.find_by(name: toFind)		
	end
	
	# GET /GetPlacesByCategory
	# GET /GetPlacesByCategory.json
	def GetPlacesByCategory
		toFind = params[:places]
		@category = Places.find_by(category: toFind)
		
		@places = Places.all
	end
end
