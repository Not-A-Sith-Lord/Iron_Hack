class Pawn < Piece

	def can_move?(new_x, new_y)

		if @color == "white" && ( @y + 1 == new_y || @y == 2 && new_y == 4)
			puts "valid"
		elsif @color == "black" && ( @y - 1 == new_y || @y == 7 && new_y == 5)
			puts "valid"
		else
			puts "invalid"
		end
	end

	end