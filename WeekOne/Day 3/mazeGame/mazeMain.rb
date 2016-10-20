

class Room
	attr_accessor :exit, :entry, :description
	def initialize(exit, entry, description)
		@exit = exit
		@entry = entry
		@description = description
end

end

class Game 
	attr_accessor :rooms, :current_position
	def initialize
		@rooms = []
		@current_position = 0
	end

	def add_room(room)
		@rooms.push(room)
	end

	def move(input)
		if input = @rooms.exit
			@current_position = current_position + 1
	end
end



room0 = Room.new("E", nil, "You find yourself in a dark, mysterious, and disturbingly moist room.")
room1 = Room.new("S", "W", "This room is not pitch black but dark all the same. It smells like bacon, and your stomach grumbles. The smell comes from the south.")
room2 = Room.new("W", "N", "A glorious platter of bacon and steaming roast pork sits in the middle of the room under golden light.")
room3 = Room.new("S", "E", "This room is fully lit and empty. The southern section is covered in a pool of water.")
room4 = Room.new("S", "N", "You emerge into a room lit by candles and a spooky skeleton dancing while staring at you.")
room5 = Room.new("E", "N", "A large oak door stands at the west, and another large oak door stands at the east. One will kill you. The other might lead to escape. Wat do.")



 lets_play = Game.new
 lets_play.add_room(room0)
  lets_play.add_room(room1)
   lets_play.add_room(room2)
    lets_play.add_room(room3)
     lets_play.add_room(room4)
      lets_play.add_room(room5)
 puts lets_play.rooms[0].exit
