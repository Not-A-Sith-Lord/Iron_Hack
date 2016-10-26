class PasswordChecker


def check_password(email, password)
  			#Lb^*@bsK
	if password.length >= 8  && password.match(/[a-z]/) && password.match(/[[:digit:]]/) && 
		password.match(/[^a-zA-Z0-9]/) && password.match(/[A-Z]/) && 
		password.include?(email[/[^@]+/]) != true 

			array = email.split("@")
			array1 = array[1].split(".")

			if password.include?(array1[0]) != true
				true
			else
				false
			end
	
		# true

	else
		false
	end

end

end


