class Knight < Piece

	def can_move?(new_x, new_y)
		

		if new_x == @x - 1 || new_x == @x + 1
			 if @y + 2 == new_y || @y - 2 == new_y
			puts "valid"
			else 
				puts "invalid"
			end
		elsif new_x == @x - 2 || new_x == @x + 2
			if @y + 1 == new_y || @y - 1 == new_y
				puts "valid"
			else 
				puts "invalid"
			end
		else
			puts "invalid"
		end
	end
end