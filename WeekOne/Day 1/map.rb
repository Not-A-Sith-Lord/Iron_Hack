
heroes_array = ["Batman", "Green Lantern", "Superman", "The Flash", "Cyborg", "Aquaman", "WonderWoman", "Aquaman"]

new_array = []
length_array = []

new_array = heroes_array.map do |x|
	x.downcase
end

length_array = heroes_array.map do |x|
	x.length 
	end
# or 
# heroes_array.map do |x|
# 	heroes_array.push(x.downcase)	
# end

puts "Original array"
puts "------------"
puts heroes_array
puts "New array"
puts "------------"
puts new_array
puts "Length array"
puts "------------"
puts length_array

cities = ["miami", "memphis", "paris", "ubi", "seminole"]
capCities = []

# capCities = cities.map do |x|
# 	x.capitalize
# end

capCities = cities.map { |x| x.capitalize }

puts capCities