class Word_count
	def initialize(word)
		@word = word
	end

	def run
		
		print "Number of words is: "
		puts @word.split.size
	end
end