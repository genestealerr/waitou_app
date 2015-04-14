class ApiController < ApplicationController

	# GET /places
	# GET /places.json
	def index
	end
	
	# GET /GetPlaces
	# GET /GetPlaces.json
	def GetPlaces
		
		@places = Place.all		
	end
	
	
	# POST /PostPlaces
	# POST /PostPlaces.json
	def PostPlaces
	
		setName = params[:name]
		setDescription = params[:description]
		setCategory = params[:category]
		setPicture = params[:picture]
		setPricerate = params[:pricerate]
		setCreator = params[:creator]
		setLongitude = params[:longitude]
		setLatitude = params[:latitude]
		setUpdator = params[:updator]
		setLikes = params[:likes]
		
		Place.create(:name=>setName, :description=>setDescription, :category=>setCategory, :picture=>setPicture, :pricerate=>setPricerate, 
					:creator=>setCreator, :longitude=>setLongitude, :latitude=>setLatitude, :updator=>setUpdator, :likes=>setLikes)
	
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
