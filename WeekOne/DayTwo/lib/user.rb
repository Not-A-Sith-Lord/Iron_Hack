class User
	def initialize(name, email, age)
		@name = name
		@email = email
		@age = age
	end
	def login
		puts "#{@name} is logging in with #{@email}"
	end

	def greet 
		puts "Hello"
	end
end
