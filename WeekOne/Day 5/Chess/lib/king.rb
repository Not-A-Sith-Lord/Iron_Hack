class King < Piece

	def can_move?(new_x, new_y)

		if @x + 1 == new_x || @x - 1 == new_x || @x = new_x && @y + 1 == new_y || @y - 1 == new_y || @x = new_y 
			puts "Yup that's valid"
		else 
			puts "Nope"
		end
		
	end
end