


class Programmer 
	include Payable_hourly
	include Caffeine_consumer

	def program
		consume_caffeine
		do_wonderful_things_with_computers
		receive_salary
	end



	def do_wonderful_things_with_computers
		puts "Look i'm programming"
	end
end

