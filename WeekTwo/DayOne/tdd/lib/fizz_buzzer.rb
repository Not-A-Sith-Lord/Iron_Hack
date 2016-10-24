
class FizzBuzzer 

	def fizz_buzz(digit)

		if digit % 3 == 0 && digit % 5 == 0
			digit = "FizzBuzz"
		elsif digit % 3 == 0
			digit = "Fizz"
		elsif digit % 5 == 0
			digit = "Buzz" 
		else
			digit = digit.to_s
		end


	end

	end