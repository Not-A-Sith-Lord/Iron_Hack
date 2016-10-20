


class Auth 
	attr_reader :access
	def initialize(username_input, password_input)
		@username_input = username_input
		@password_input = password_input
		@access = nil


	end

	def check
		if @username_input == "ariel" && @password_input == "whatever"
			puts "It worked!"
			@access = true
		else
			puts "That's wrong!"
			@access = false
		end
	end
end