require_relative("lib/piece.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")




first_rook = Rook.new(1,8, "black")
first_bishop = Bishop.new(4, 6, "white")
first_knight = Knight.new(6, 5,"white")
first_pawn = Pawn.new(2, 7, "black")

first_pawn.can_move?(2,4)