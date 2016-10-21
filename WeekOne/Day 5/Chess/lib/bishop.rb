class Bishop < Piece 
	
# 7,5 original
# 5,3 destination
	def can_move?(new_x, new_y)
		if (@x - new_x).abs == (@y - new_y).abs
			puts "Valid"
		else 
			puts "Invalid"
		end

		#Really overly complicated code
		# if @x > new_x
		# 	if @y < new_y
		# 		if @y + (@x - new_x) == new_y
		# 			puts "valid"
		# 		else 
		# 			puts "invalid"
		# 		end
		# 	else # @y > new_Y
		# 		if @y - (@x - new_x) == new_y
		# 			puts "valid"
		# 		else
		# 			puts "invalid"
		# 		end
		# 	end
		# else # @x < new_x
		# 	if @y < new_y
		# 		if @y + (new_x - @x) == new_y
		# 			puts "valid"
		# 		else
		# 			puts "invalid"
		# 		end
		# 	else # @y > new_y
		# 		if @y - (new_x - @x) == new_y
		# 			puts "valid"
		# 		else 
		# 			puts "invalid"
		# 		end

		# 	end
		# end
	end
end