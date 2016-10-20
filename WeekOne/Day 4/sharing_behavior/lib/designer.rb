
class Designer 
	include Payable_salary
	include Caffeine_consumer

	def design_things 
		consume_caffeine
		select_typography
		select_colors
		receive_salary
	end

	
	def select_typography
		puts "I like comic sans"
	end

	def select_colors
		puts "Blue is my favorite color"
	end
end