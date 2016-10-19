def create_list (array, destination)
array.each do |movie|
 	i = Imdb::Search.new(movie)
 	first_result = i.movies[0]
 	title = first_result.title 
 	rating = first_result.rating 

 	destination.push({:title => title, :rating => rating})
 	end
end