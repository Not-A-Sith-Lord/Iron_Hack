require_relative("lib/country_counter.rb")


countries = ["Puerto Rico", "USA", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]

countries.each do |a_country|
	puts "Some of us identify with #{a_country}"

	end

	upper_country = countries.map do |a_country|
		a_country.upcase
	end

	puts ""


count = CountryCount.new

puts count.count_countries("USA", countries)