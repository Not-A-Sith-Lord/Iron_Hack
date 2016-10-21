class Rook < Piece
	def can_move?(new_x, new_y)
		

		if new_x == @x || new_y == @y
			puts "That's a valid move"
		else
			puts "Nah man that ain't it"
		end
	end
end