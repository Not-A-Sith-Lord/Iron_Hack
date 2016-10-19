
heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Aquaman", "WonderWoman" ]

total_lengths = 0

heroes_array.each {|x| total_lengths += x.length }

total_length = heroes_array.reduce(0) do |sum, x| 
	puts "Sum: #{sum}" 
	puts "X: #{x}"
	puts "X Length: #{x.length}"
	puts "Result This Round: #{sum + x.length}"
	puts "--------------------"

	gets.chomp
	sum + x.length
	 end

	 