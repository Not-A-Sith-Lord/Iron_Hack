require_relative("lib/piece.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

board = Board.new()


first_rook = Rook.new(1,8, "black")
first_bishop = Bishop.new(4, 6, "white")
first_knight = Knight.new(1, 4,"white")
first_pawn = Pawn.new(2, 7, "white")

 board.add_piece(first_pawn)
 board.add_piece(first_rook)
 board.add_piece(first_bishop)
 board.add_piece(first_knight)

board.move_piece?(1, 4, 2, 6)

board.move_piece?(1, 4, 100, 100)

