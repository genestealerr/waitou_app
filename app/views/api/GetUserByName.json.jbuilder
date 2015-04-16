if (@user)
	json.extract! @user, :id, :name, :mail, :password, :userpicture
end