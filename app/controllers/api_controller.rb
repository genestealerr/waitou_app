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
				
		@return = Struct.new(:name).new("Success")
		
		verifName = Place.find_by(name: setName)
		verifLongitude = Place.find_by(longitude: setLongitude)
		verifLatitude = Place.find_by(latitude: setLatitude)
		
		if (!verifName)
			if (verifLatitude && verifLongitude)
				@return.name = "Error Creating : Position Already Exist"
			else
				Place.create(:name=>setName, :description=>setDescription, :category=>setCategory, :picture=>setPicture, :pricerate=>setPricerate, 
							:creator=>setCreator, :longitude=>setLongitude, :latitude=>setLatitude, :updator=>setUpdator, :likes=>setLikes)
			end
		else
			@return.name = "Error Creating : Name Already Exist"
		end
	end
	
	# UPDATE /UpdatePlaces
	# UPDATE /UpdatePlaces.json
	def UpdatePlaces
	
		setId = params[:id]
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
		
		@place = Place.find_by_id(params[:id])
		@return = Struct.new(:name).new("Success")
		if (@place)
		
			verifName = Place.find_by(name: setName)
			verifLongitude = Place.find_by(longitude: setLongitude)
			verifLatitude = Place.find_by(latitude: setLatitude)
		
			if (!verifName)
				if (verifLatitude && verifLongitude)
					@return.name = "Error Creating : Position Already Exist"
				else
					@place.update(:name=>setName, :description=>setDescription, :category=>setCategory, :picture=>setPicture, :pricerate=>setPricerate, 
								:creator=>setCreator, :longitude=>setLongitude, :latitude=>setLatitude, :updator=>setUpdator, :likes=>setLikes)
				end
			else
				@return.name = "Error Creating : Name Already Exist"
			end
		else
			@return.name = "Error : Couldn't Find Place"
		end
	end
	
	# DESTROY /DestroyPlaces
	# DESTROY /DestroyPlaces.json
	def DestroyPlaces
	
		setId = params[:id]
		
		@place = Place.find_by_id(params[:id])
		@return = Struct.new(:name).new("Success")
		
		if (@place)
			@place.destroy
		else	
			@return.name = "Error : Couldn't Find Id"
		end
		
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
	
	# GET /GetUsers
	# GET /GetUsers.json
	def GetUsers
		
		@users = User.all		
	end
	
	# POST /PostUsers
	# POST /PostUsers.json
	def PostUsers
	
		setName = params[:name]
		setMail = params[:mail]
		setPwd = params[:pwd]
		setUPict = params[:upict]
				
		@return = Struct.new(:name).new("Success")
		
		verifName = User.find_by(name: setName)
		verifMail = User.find_by(mail: setMail)
		
		if (!verifName)
			if (verifMail)
				@return.name = "Error Creating : Mail Already Exist"
			else
				User.create(:name=>setName, :mail=>setMail, :password=>setPwd, :userpicture=>setUPict)
			end
		else
			@return.name = "Error Creating : Name Already Exist"
		end
	end
end
