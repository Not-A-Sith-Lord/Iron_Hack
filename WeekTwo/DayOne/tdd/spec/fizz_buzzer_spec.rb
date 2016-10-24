
require_relative("../lib/fizz_buzzer.rb")


RSpec.describe "Fizz buzz algorithm" do

	it "one number to one string" do
	expect(FizzBuzzer.new.fizz_buzz(7)).to eq("7")
	expect(FizzBuzzer.new.fizz_buzz(11)).to eq("11")
	end

	it "numbers divisible by 3 to fizz" do
	expect(FizzBuzzer.new.fizz_buzz(9)).to eq("Fizz")
	expect(FizzBuzzer.new.fizz_buzz(12)).to eq("Fizz")
	end

	it "numbers divisible by 5 to buzz" do
	expect(FizzBuzzer.new.fizz_buzz(10)).to eq("Buzz")
	expect(FizzBuzzer.new.fizz_buzz(25)).to eq("Buzz")
	end

	it "numbers divisible by both 5 and 3 to FizzBuzz" do
	expect(FizzBuzzer.new.fizz_buzz(15)).to eq("FizzBuzz")
	expect(FizzBuzzer.new.fizz_buzz(30)).to eq("FizzBuzz")
	end


end