
require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

puts ""
puts "Hello user, please identify yourself"

puts "Username: "
username_input = gets.chomp

puts "Password: "
password_input = gets.chomp

puts ""

start = Auth.new(username_input, password_input)
start.check

 if start.access
 	puts "Now type something to count"
 	word = gets.chomp
 	count = Word_count.new(word)
 	count.run
 else 
 	puts "Goodbye"
 end
