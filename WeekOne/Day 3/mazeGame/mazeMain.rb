

class Room
	attr_accessor :exit, :entry, :description, :complication, :answer
	def initialize(exit, entry, description, complication, answer)
		@exit = exit
		@entry = entry
		@description = description
		@complication = complication
		@answer = answer
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
		puts "You decide to move #{input}"

	

		if input == @rooms[@current_position].exit
			@current_position += 1
			puts "You found the exit!"
			puts @rooms[@current_position].description
					if @rooms[@current_position].complication != nil 
						puts @rooms[@current_position].complication
						puts "'yes' or 'no'?"
						input = gets.chomp
						if input.downcase != @rooms[@current_position].answer
							puts "you died"
							abort("YOU ARE A LOSER")
						else
							puts "You survive!"
						end
					end
		elsif input == @rooms[@current_position].entry
			puts "Dummy! You regressed!"
			@current_position -= 1
			puts @rooms[@current_position].description
		else
			puts "There's nothing there!"
		end
	end
end



room0 = Room.new("E", 0, "You find yourself in a dark, mysterious, and disturbingly moist room.", nil, nil)
room1 = Room.new("S", "W", "This room is not pitch black but dark all the same. It smells like bacon, and your stomach grumbles. The smell comes from the south.", nil, nil)
room2 = Room.new("W", "N", "A glorious platter of bacon and steaming roast pork sits in the middle of the room under golden light.", "Do you eat the heavenly sustenance?", "no")
room3 = Room.new("S", "E", "This room is fully lit and empty. The southern section is covered in a pool of water.", "Can you swim?", "yes")
room4 = Room.new("S", "N", "You emerge into a room lit by candles and a spooky skeleton dancing while staring at you.", "Do you dance with it?", "yes")
room5 = Room.new("E", "N", "A large oak door stands at the west, and another large oak door stands at the east. One will kill you. The other might lead to escape. Wat do.", nil, nil)



 lets_play = Game.new
 lets_play.add_room(room0)
  lets_play.add_room(room1)
   lets_play.add_room(room2)
    lets_play.add_room(room3)
     lets_play.add_room(room4)
      lets_play.add_room(room5)
      puts "LET'S PLAY"
      puts room0.description
 
 while lets_play.current_position != 6

 	puts "You can move 'N' 'E' 'S' 'W'"
 	input = gets.chomp
 	lets_play.move(input)


 end










