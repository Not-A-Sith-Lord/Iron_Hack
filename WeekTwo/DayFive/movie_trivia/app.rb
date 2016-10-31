require "pry"
require "sinatra"
require 'sinatra/reloader' if development?
require "bundler/setup"
require("imdb") 

require_relative("lib/logic.rb")

#hello

get "/" do
	
	erb :home
end


get "/search_results" do
  @the_search = Imdb::Search.new(params[:search_word])
  @list = @the_search.movies
  @sorted_movies = []
  #To refactor
  # movies = Movies.new(params[:search_word])
  # movies.sort()
 
   i = 0
   x = 0
   while i < 9 && x < @list.length
   		if @list[i].poster != nil
   			@sorted_movies.push(@list[i])
   			i += 1 
   		end
   		x += 1
   	end

   random = Random.rand(1...9)
  @answer = @sorted_movies[random].year()

   	 
  erb :results

end