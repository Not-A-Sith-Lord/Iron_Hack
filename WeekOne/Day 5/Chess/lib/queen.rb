class Queen < Piece

	def can_move?(new_x, new_y)
		
		if (new_x == @x || new_y == @y) || (@x - new_x).abs == (@y - new_y).abs
			puts "valid"
		else
			puts "invalid"

		end
	end
end