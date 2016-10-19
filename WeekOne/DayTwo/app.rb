
require_relative("lib/user.rb")

require_relative("lib/car.rb")

ariel = User.new("Ariel", "arieldeschapell@gmail.com", 21)
ariel.greet
first_car = Car.new("honda", "Beep Beep")
second_car = Car.new("kia", "BEEEEEEEP BEEEEEP")
first_car.honk
second_car.honk
