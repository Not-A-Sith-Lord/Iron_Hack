

require_relative("lib/caffeine_consumer.rb")
require_relative("lib/payable.rb")
require_relative("lib/programmer.rb")
require_relative("lib/designer.rb")



ariel = Programmer.new
ariel.program
ike = Designer.new 
puts "----"
ike.design_things

