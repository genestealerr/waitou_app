class ApiController < ApplicationController

	# GET /places
	# GET /places.json
	def index
	end
	
	# GET /GetPlaceByName
	# GET /GetPlaceByName.json
	def GetPlaceByName
		toFind = params[:places]
		
		@places = Place.find_by(name: toFind)			
	end
	
	# GET /GetPlacesByCategory
	# GET /GetPlacesByCategory.json
	def GetPlacesByCategory
		toFind = params[:places]
		@category = Place.find_by(category: toFind)
		
		@places = Place.all
	end
end
