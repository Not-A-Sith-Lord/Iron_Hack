
class Car

	def initialize (type, sound)
		@type = type
		@sound = sound
		
	end

	def honk
		puts " #{@type} goes #{@sound}"
	end

	
end