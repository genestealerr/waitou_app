class ApiController < ApplicationController

	# GET /places
	# GET /places.json
	def index
		toFind = params[:places]
		
		@places = Place.find_by(name: toFind)		
			
	end
end