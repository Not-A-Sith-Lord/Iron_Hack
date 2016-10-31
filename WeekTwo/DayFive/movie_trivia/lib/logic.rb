
class Movies 
   attr_accessor :sorted_movies
   def initialize(word)
      @search = Imdb::Search.new(word).movies
      @sorted_movies = []
   end

   def sort

   i = 0
   x = 0
   while i < 9 && x < @list.length
   		puts "BANANA"
   		puts i 
   		puts @the_search.class
   		if @list[i].poster != nil
   			@sorted_movies.push(@list[i])
   			i += 1 
   		end
   		x += 1
   	end
   end

end