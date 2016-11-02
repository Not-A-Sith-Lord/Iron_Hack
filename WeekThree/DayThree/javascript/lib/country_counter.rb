class CountryCount
	def count_countries(country, array)
		count = 0
		array.each do |x|

			if x == country 
				count += 1
			end
		end
		count
	end
end