def create_movie_list (array)

File.open("movies.txt") do |text|
	text.each_line do |line|
 		array.push(line)
 			end
 		end
end