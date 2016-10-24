class Board
attr_accessor :pieces, :coordinants
def initialize 

	@coordinants = [nil, [], [], [], [], [], [], [], []  ]

end

def add_piece(piece)
	@coordinants[piece.x][piece.y] = piece

end

def move_piece?(x, y, dest_x, dest_y)

	if @coordinants[x][y] == nil
		puts "No piece here"

	elsif dest_x == x || dest_y == y
		puts "You didn't move dummy"

	elsif (dest_x > 8 || dest_x < 1 )|| (dest_y > 8 || dest_y < 1)
		puts "That's invalid, you're off the board"

	else
		return @coordinants[x][y].can_move?(dest_x, dest_y)
	end

end

end