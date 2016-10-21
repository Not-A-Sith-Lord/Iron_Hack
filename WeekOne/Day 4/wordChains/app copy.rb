
require "ruby-dictionary"

the_dictionary = Dictionary.from_file("/usr/share/dict/words")

class WordChain
    
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1, word2)
       
puts word1
	while word1 != word2 
	       letter = 0
	       

	     while letter < word1.length + 1 
	       	
	       	first_word = word1.clone
	       

	       	if first_word[letter] == word2[letter]
	       		
	       		#do nothing
	       		else
	     		
	     			first_word[letter] = word2[letter]
	     			
	     				if @dictionary.exists?(first_word) 
	     				word1 = first_word
	     				puts word1
	     				end
	       	end

	       	letter += 1
	       end

	   end

	    end
end


exercise = WordChain.new(the_dictionary)

exercise.find_chain("fish", "duct")



