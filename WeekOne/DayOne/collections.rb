class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

home_prices =[]
home_sort = []


homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("J's place", "Mongolia", 9, 22),
  Home.new("Jose's place", "Miami", 5, 49),
  Home.new("Lorrena's place", "New York", 2, 38),
  Home.new("Eliot's place", "Memphis", 2, 42.8),
  Home.new("Ariel's place", "Madeira Beach", 4, 90)
]

# homes.each {|x|
# 	puts "#{x.name} is in #{x.city}"
# 	puts "The cost is: #{x.price}"
# }

home_prices = homes.map {|x|
	x.price
}

 def cheapest(array)
 	array.sort! {|a,b|
	a.price <=> b.price
}	
end

 def expensive(array)
 	array.sort! {|a,b|
	b.price <=> a.price
}	
end

def capacity(array)
 	array.sort! {|a,b|
	a.capacity <=> b.capacity
}	
end



def array_printer(array)
	if array.kind_of?(Array)
  array.each { | x |
    puts "#{x.name} | #{x.city} | #{x.capacity} | #{x.price}"
  }
else 

  	puts array.name
  end
end


array_printer(homes)


display = []
puts "Would you like to sort by 'expensive', 'cheapest', 'capacity' or 'city' or 'price' or do you want 'average' by price?"

input = gets.chomp

	if (input == "expensive") 
		display = expensive(homes)
	 elsif (input == 'cheapest') 
		display = cheapest(homes)
	 elsif (input == 'capacity') 
		display = capacity(homes)
	 elsif (input == "city")
	 	puts "Which city?"
		c = gets.chomp
		display = homes.select {|x|
			x.city == c
		}
	elsif (input == "price")
		puts "type in a price"
		price = gets.chomp
		display = homes.find {|x|
			x.price == price.to_i}


	end
array_printer(display)
	# array_printer(display)
	# average = 0
	# puts "do you want to see the average price?"
	# answer = gets.chomp 
	# if answer == "yes"
	# 	average = display.reduce(0.0) { |sum, x|
	# 		sum = (sum + x.price) 

	# 	}
	# 	puts average / display.length
	# else 
	# 	puts "ok"
	# end










	